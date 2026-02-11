---
title: "Thoughts on Generalization in Diffusion Models"
layout: archive
permalink: /blogs/2026-2-10-diffusion-gen-from-rep/
tags: [blogs]
---

Generalization is the implicit alignment between neural networks and the underlying data distribution, shaped by both data and human perception. In diffusion models, this means generating novel, meaningful samples rather than reproducing training examples.

However, it is not trivial that networks, among all possible solutions that fit the training data, **automatically** choose solutions that also fit unseen data well and thus generate new samples.

<p style="text-align:center;">
  <img src="/images/blogs/2026-2-10-1.png" alt="Generalization in diffusion models" style="display:block; width:65%; max-width:820px; margin:0 auto;" />
</p>

In our [ICLR 2026 paper](https://openreview.net/forum?id=57THeGgNAN), we show that this ability is not just because networks are powerful and can approximate any function. It is more tightly connected to **their ability to extract and leverage structure** from training data, and to learn balanced, informative representations that organize data and adapt to complex distributions.

Read more in the [official blog]({{ '/blogs/2026-2-10-diffusion-gen-from-rep/' | relative_url }}) and the [slides](https://drive.google.com/file/d/12A0cRa1vq_kCqEHYl_2rMLuMIZv64RmV/view?usp=sharing).
