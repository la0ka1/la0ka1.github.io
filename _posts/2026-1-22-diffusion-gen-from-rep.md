---
title: "Thoughts on Generalization in Diffusion Models"
layout: archive
permalink: /notes/2026-1-22-diffusion-gen-from-rep/
tags: [notes]
redirect_from:
  - /blogs/2026-1-22-diffusion-gen-from-rep/
  - /blogs/2026-2-10-diffusion-gen-from-rep/
  - /notes/2026-2-10-diffusion-gen-from-rep/
---

Generalization is the implicit alignment between neural networks and the underlying data distribution, shaped by both data and human perception. In diffusion models, this means generating novel, meaningful samples rather than reproducing training examples.

However, it is not obvious that, among all solutions that fit the training data, neural networks will **automatically** choose ones that also generalize well to unseen data and therefore generate truly new samples.

<p style="text-align:center;">
  <img src="/images/notes/2026-1-22-1.png" alt="Generalization in diffusion models" style="display:block; width:65%; max-width:820px; margin:0 auto;" />
</p>

In our [ICLR 2026 paper](https://openreview.net/forum?id=57THeGgNAN), we show that this ability is not just because networks are powerful function approximators. It is more tightly connected to **their ability to extract and leverage structure** from training data, and to learn balanced, informative representations that organize data and adapt to complex distributions. Read more in the [official note](https://la0ka1.github.io/diffusion-gen-from-rep/) and the [slides](https://drive.google.com/file/d/12A0cRa1vq_kCqEHYl_2rMLuMIZv64RmV/view?usp=sharing).


扩散模型泛化能力从何而来？换言之，扩散模型凭什么从有限样本中学习分布，并生成新样本？从分数匹配（score matching）角度出发，如果训练数据足够多、足以刻画真实分布，并且网络优化充分，那么模型会学到最优的去噪/分数函数；此时我们把网络看作理想黑箱。但在有限样本下，训练损失函数并不保证模型学到真实分布；相反它鼓励网络拟合、记忆训练样本，导致模型重复生成训练集图像。

因此泛化不只是因为是网络“表达力强”（否则更容易过拟合），而更来自网络与数据分布之间的某种天然的结构亲和性。在我们[发表于 ICLR 2026 的论文](https://openreview.net/forum?id=57THeGgNAN)中，我们从两层非线性网络出发对这一点进行分析。理论与实验均表明，网络能够高效抽取数据结构并学习合理表征，从而获得这种亲和性，或者说泛化能力。更多细节参见[笔记](https://la0ka1.github.io/diffusion-gen-from-rep/)。
