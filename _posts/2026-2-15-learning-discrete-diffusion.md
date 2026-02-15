---
title: "Learning notes for discrete diffusion"
layout: archive
permalink: /notes/2026-2-15-learning-discrete-diffusion/
tags: [notes]
redirect_from:
  - /blogs/2026-2-15-learning-discrete-diffusion/
---

## Metropolis-Hastings (MH)
是一种从简单提议分布 $q(x' \mid x)$ 反复采样、并通过逐步更新，最终得到复杂目标分布 $\pi(x)$ 样本的方法。

需要 MH，是因为即便我们能直接计算任意位置的 pdf $\pi(x)$，直接采样依然很困难。比如逆变换采样需要 CDF，而计算 CDF 往往需要归一化常数 $Z=\int \pi(x)\,dx$。在高维空间（如图像生成）中，通常无法计算 $Z$。因此，MH 通过局部的提议-接受机制，仅用采样轨迹上少量的 $\pi(x)$ 计算来逐步接近目标分布。

## MH算法

- 提议：根据预先设定的提议分布 $q(x' \mid x)$ 生成候选点 $x'$（比如给当前样本加高斯噪声或均匀扰动）。

- 计算接受率：
  \\[
  \alpha = \min\left(1,\frac{\pi(x')}{\pi(x)} \times \frac{q(x \mid x')}{q(x' \mid x)}\right)
  \\]
  目标分布 $\pi$ 的信息体现在接受率的大小上。

- 决策：生成 $u\sim \text{Uniform}(0,1)$。若 $u<\alpha$，则移动到 $x'$；否则停留在 $x$。

每步接受率包含两项：
(1) 目标密度比 $\left(\frac{\pi(x')}{\pi(x)}\right)$：让采样更倾向于目标分布的高概率区域；归一化常数 $Z$ 会在比值中抵消，因此只需比较两个状态的相对概率。  (2) Hastings 修正项 $\left(\frac{q(x \mid x')}{q(x' \mid x)}\right)$：用于修正提议分布 $q$ 引入的偏差，否则采样可能会偏向那些 $q$ 更大的区域。

## 扩散模型

**图像扩散模型**：在高维连续空间中，如果使用随机游走的 $q$，候选点往往落在低概率区域，导致拒绝率很高。因此常用带梯度 $\nabla \log \pi(x)$ 信息的 Langevin 更新，用梯度来指导更新方向：

\\[
x' = x + \tau \nabla \log \pi(x) + \text{噪音}.
\\]

**语言扩散模型**：可使用 Gibbs 采样（MH 的特例）。每一步选定一个位置 $i$ 来更新，记上下文为 $x_{-i}$。神经网络从上下文预测该位置的条件分布 $q_\theta(x_i\mid x_{-i})$，并采样新 token $x_i'\sim q_\theta(\cdot\mid x_{-i})$ 得到新句子 $x'$，同时上下文不变 $x_{-i}'=x_{-i}$。

此时对完整句子的提议分布为
\\[
q_\theta(x' \mid x)= q_\theta(x_i'\mid x_{-i})\cdot \mathbf{1}(x_{-i}'=x_{-i}).
\\]

若网络学得足够好，使 $q_\theta(x_i\mid x_{-i})=\pi(x_i\mid x_{-i})$，则（更新位置 $i$ 时）MH 接受率
\\[
\alpha(x\to x')=\min\left(1,\frac{\pi(x')}{\pi(x)}\cdot\frac{q_\theta(x \mid x')}{q_\theta(x' \mid x)}\right).
\\]
由于上下文不变 $x_{-i}'=x_{-i}$，且 $\pi(x)=\pi(x_i\mid x_{-i})\pi(x_{-i})$，有
\\[
\frac{\pi(x')}{\pi(x)}=\frac{\pi(x_i'\mid x_{-i})}{\pi(x_i\mid x_{-i})},
\qquad
\frac{q_\theta(x \mid x')}{q_\theta(x' \mid x)}=\frac{q_\theta(x_i\mid x_{-i})}{q_\theta(x_i'\mid x_{-i})}.
\\]
因此接受率进一步化简为
\\[
\alpha(x\to x')
=\min\left(1,\frac{\pi(x_i'\mid x_{-i})}{\pi(x_i\mid x_{-i})}\cdot
\frac{q_\theta(x_i\mid x_{-i})}{q_\theta(x_i'\mid x_{-i})}\right)=1.
\\]

而 $\alpha=1$ 意味着每次提出的局部更新都无需拒绝，采样更高效稳定；因此 Gibbs 常用于离散生成模型（如 BERT, Masked Diffusion）。
