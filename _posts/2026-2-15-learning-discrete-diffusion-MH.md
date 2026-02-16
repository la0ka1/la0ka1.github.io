---
title: "Learning discrete diffusion -- MH sampling"
layout: archive
permalink: /notes/2026-2-15-learning-discrete-diffusion-MH/
tags: [notes]
excerpt: "Metropolis–Hastings (MH) is a Markov chain Monte Carlo method that repeatedly draws proposals from a simple distribution and updates the current state with an accept/reject rule."
redirect_from:
  - /blogs/2026-2-15-learning-discrete-diffusion-MH/
---

<style>
#post-lang-switcher-2026-2-15-mh .post-lang-toggle {
  display: inline-flex;
  gap: 0.5rem;
  margin: 0.25rem 0 0.35rem;
}

#post-lang-switcher-2026-2-15-mh .post-lang-toggle-btn {
  border: 1px solid #b5b5b5;
  background: #ffffff;
  color: #202020;
  padding: 0.3rem 0.75rem;
  border-radius: 999px;
  cursor: pointer;
  font-size: 0.9rem;
  line-height: 1.2;
  user-select: none;
}

#post-lang-switcher-2026-2-15-mh .post-lang-radio {
  position: absolute;
  opacity: 0;
  pointer-events: none;
}

#post-lang-switcher-2026-2-15-mh [data-lang-section="en"],
#post-lang-switcher-2026-2-15-mh [data-lang-section="zh"] {
  display: none;
}

#post-lang-switcher-2026-2-15-mh #post-lang-en-2026-2-15-mh:checked ~ .post-lang-toggle label[for="post-lang-en-2026-2-15-mh"],
#post-lang-switcher-2026-2-15-mh #post-lang-zh-2026-2-15-mh:checked ~ .post-lang-toggle label[for="post-lang-zh-2026-2-15-mh"] {
  background: #202020;
  border-color: #202020;
  color: #ffffff;
}

#post-lang-switcher-2026-2-15-mh #post-lang-en-2026-2-15-mh:checked ~ [data-lang-section="en"] {
  display: block;
}

#post-lang-switcher-2026-2-15-mh #post-lang-zh-2026-2-15-mh:checked ~ [data-lang-section="zh"] {
  display: block;
}

#post-lang-switcher-2026-2-15-mh [data-lang-section] > :first-child {
  margin-top: 0.2rem;
}
</style>

<div id="post-lang-switcher-2026-2-15-mh">
  <input class="post-lang-radio" type="radio" id="post-lang-en-2026-2-15-mh" name="post-lang-2026-2-15-mh" checked>
  <input class="post-lang-radio" type="radio" id="post-lang-zh-2026-2-15-mh" name="post-lang-2026-2-15-mh">

  <div class="post-lang-toggle" role="group" aria-label="Language switch">
    <label class="post-lang-toggle-btn" for="post-lang-en-2026-2-15-mh">English</label>
    <label class="post-lang-toggle-btn" for="post-lang-zh-2026-2-15-mh">中文</label>
  </div>

  <section data-lang-section="en" markdown="1">

## Metropolis–Hastings (MH)
is a Markov chain Monte Carlo method that repeatedly draws proposals from a simple distribution $q(x'\mid x)$ and updates the current state via an reject rule, so that the resulting samples follow a complex target distribution $\pi(x)$ in the long run.

The key is that even if we can evaluate the target density, direct sampling can still be hard. For example, inverse transform sampling requires the CDF, whose computation typically involves the normalization constant $Z=\int \pi(x)\,dx$, which is intractable in high dimensions. MH avoids global normalization by using a local proposal + acceptance mechanism, and only relies on density ratios along the sampling trajectory.

## Algorithm

- **Propose:** draw a candidate $x'\sim q(x'\mid x)$ (e.g., add Gaussian noise or a random perturbation to the current state).
- **Compute acceptance probability:**
  \\[
  \alpha = \min\left(1,\frac{\pi(x')}{\pi(x)} \times \frac{q(x \mid x')}{q(x' \mid x)}\right)
  \\]
  Information about the target $\pi$ enters through this acceptance probability.
- **Accept/reject:** sample $u\sim \mathrm{Uniform}(0,1)$. If $u<\alpha$, move to $x'$; otherwise stay at $x$.

The acceptance probability has two parts:
1. **Target density ratio** $\frac{\pi(x')}{\pi(x)}$: biases moves toward high-probability regions under $\pi$. The normalization constant cancels in the ratio.
2. **Hastings correction** $\frac{q(x\mid x')}{q(x'\mid x)}$: corrects for asymmetry in the proposal distribution and prevents bias toward regions where $q$ proposes more often.

## Diffusion language models

In discrete generation (e.g., text), a common move is a single-site update (Gibbs-style). Suppose the current sample is a sentence with $L$ tokens:
\\[
x = (x_1, x_2, \ldots, x_L)
\\]

At each step we choose a position $i$ to update, and treat the remaining tokens as the context
$x_{-i}=(x_1,\ldots,x_{i-1},\,x_{i+1},\ldots,x_L).$
Given $x_{-i}$, a neural network predicts a conditional distribution $q_\theta(x_i\mid x_{-i})$. We then sample a new token $x_i'\sim q_\theta(\cdot\mid x_{-i})$ to form the updated sentence $x'$, while keeping the context fixed, i.e., $x_{-i}'=x_{-i}.$

Under this single-site update, the proposal distribution over full sentences can be written as
\\[
q_\theta(x'\mid x)=q_\theta(x_i'\mid x_{-i})\cdot \mathbf 1(x_{-i}'=x_{-i}).
\\]

If we view this as an MH step targeting some distribution $\pi(x)$, then the MH acceptance probability is
\\[
\alpha(x\to x')=\min\left(1,\frac{\pi(x')}{\pi(x)}\cdot\frac{q_\theta(x\mid x')}{q_\theta(x'\mid x)}\right).
\\]
Since the context stays unchanged and $\pi(x)=\pi(x_i\mid x_{-i})\,\pi(x_{-i})$, we have
\\[
\frac{\pi(x')}{\pi(x)}=\frac{\pi(x_i'\mid x_{-i})}{\pi(x_i\mid x_{-i})},\qquad
\frac{q_\theta(x\mid x')}{q_\theta(x'\mid x)}=\frac{q_\theta(x_i\mid x_{-i})}{q_\theta(x_i'\mid x_{-i})}.
\\]
Therefore,
\\[
\alpha(x\to x')=
\min\left(1,\frac{\pi(x_i'\mid x_{-i})}{\pi(x_i\mid x_{-i})}\cdot
\frac{q_\theta(x_i\mid x_{-i})}{q_\theta(x_i'\mid x_{-i})}\right).
\\]

When the learned proposal equals the true full conditional, i.e. $q(x_i'\mid x_{-i})=\pi(x_i'\mid x_{-i})$, then the terms cancel exactly and \$\alpha\equiv 1$. This is the standard statement that Gibbs sampling is a special case of MH.

In diffusion/Masked LM settings, the network provides an approximate conditional $q_\theta(x_i\mid x_{-i})$ while the true $\pi(x)$ (or $\pi(x_i\mid x_{-i})$) is typically not explicitly available and cannot be evaluated. So we usually cannot compute $\alpha$, and the common replace-one-token by sampling from $q_\theta$ procedure is best viewed as a Gibbs-style heuristic / pseudo-Gibbs iteration, that the chain is guaranteed to sample from.


  </section>

  <section data-lang-section="zh" markdown="1">

## Metropolis-Hastings (MH)
是一种从简单分布 $q(x' \mid x)$ 反复采样、并通过逐步更新得到复杂目标分布 $\pi(x)$ 样本的方法。

MH 的意义在于，即便我们能直接计算任意位置的 pdf $\pi(x)$，直接采样依然困难。比如逆变换采样需要 CDF，而计算 CDF 往往需要归一化常数 $Z=\int \pi(x)\,dx$，在高维空间中不可行。因此，MH 通过局部的提议-接受机制，仅用采样轨迹上少量的 $\pi(x)$ 计算来逐渐接近目标分布。

## 算法

- 提议：根据预先设定的“提议”分布 $q(x' \mid x)$ 生成候选点 $x'$（比如给当前样本加高斯噪声或均匀扰动）。
- 计算接受率：
  \\[
  \alpha = \min\left(1,\frac{\pi(x')}{\pi(x)} \times \frac{q(x \mid x')}{q(x' \mid x)}\right)
  \\]
  目标分布 $\pi$ 的信息体现在接受率的大小上。
- 决策：生成 $u\sim \text{Uniform}(0,1)$。若 $u<\alpha$，则移动到 $x'$；否则停留在 $x$。

每步接受率包含两项：
(1) 目标密度比 $\left(\frac{\pi(x')}{\pi(x)}\right)$：让采样更倾向于目标分布的高概率区域；归一化常数 $Z$ 在比值上下抵消。
(2) Hastings 修正项 $\left(\frac{q(x \mid x')}{q(x' \mid x)}\right)$：用于修正提议分布 $q$ 引入的偏差，避免采样偏向 $q$ 更大的区域。

## 扩散语言模型
可以使用 Gibbs 采样（MH 的一个特例）。
假设现有样本是一个含有 L 个 token 的句子：

\\[
x = (x_1, x_2, \ldots, x_L)
\\]

每一步选定一个位置 $i$ 来更新，记其余上下文为 $x_{-i} = (x_1, x_2, \ldots, x_{i-1}, x_{i+1}, \ldots, x_L)$。神经网络从上下文预测该位置的条件分布 $q_\theta(x_i\mid x_{-i})$，并采样新 token $x_i'\sim q_\theta(\cdot\mid x_{-i})$ 得到新句子 $x'$，同时上下文不变 $x_{-i}'=x_{-i}$。


此时对完整句子的提议分布为
\\[
q_\theta(x' \mid x)= q_\theta(x_i'\mid x_{-i})\cdot \mathbf{1}(x_{-i}'=x_{-i}).
\\]

Gibbs 采样实际上告诉我们可以使用网络的预测来采样：
更新位置 $i$ 时 MH 接受率
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
\frac{q_\theta(x_i\mid x_{-i})}{q_\theta(x_i'\mid x_{-i})}\right)
\\]
若网络学得足够好，使 $q_\theta(x_i\mid x_{-i})\approx \pi(x_i\mid x_{-i})$，则通常有 $\alpha \approx 1$。同时实际上我们无法计算 $\pi(x_i\mid x_{-i})$或是$\pi(x)$，上述讨论只是分析 $\alpha$ 的性质。

当 $\alpha$ 接近 1 时，每次提出的局部更新都几乎无需拒绝，而实际上我们也就是按照网络预测来逐步生成，不进行拒绝；因此 Gibbs 常用于离散生成模型（如 BERT, Masked Diffusion）。


  </section>
</div>

<script>
(function () {
  var container = document.getElementById("post-lang-switcher-2026-2-15-mh");
  if (!container) return;

  var en = container.querySelector("#post-lang-en-2026-2-15-mh");
  var zh = container.querySelector("#post-lang-zh-2026-2-15-mh");
  if (!en || !zh) return;

  var storageKey = "post-lang-2026-2-15-mh";

  try {
    var saved = localStorage.getItem(storageKey);
    if (saved === "zh") {
      zh.checked = true;
    } else if (saved === "en") {
      en.checked = true;
    }
  } catch (err) {}

  container.addEventListener("change", function (event) {
    if (event.target === zh) {
      try { localStorage.setItem(storageKey, "zh"); } catch (err) {}
    } else if (event.target === en) {
      try { localStorage.setItem(storageKey, "en"); } catch (err) {}
    }
  });
})();
</script>
