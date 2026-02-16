---
title: "Thoughts on Generalization in Diffusion Models"
layout: archive
permalink: /notes/2026-1-22-diffusion-gen-from-rep/
tags: [notes]
excerpt: "Generalization is the implicit alignment between neural networks and the underlying data distribution, shaped by both data and human perception."
redirect_from:
  - /blogs/2026-1-22-diffusion-gen-from-rep/
  - /blogs/2026-2-10-diffusion-gen-from-rep/
  - /notes/2026-2-10-diffusion-gen-from-rep/
---

<style>
#post-lang-switcher-2026-1-22 .post-lang-toggle {
  display: inline-flex;
  gap: 0.5rem;
  margin: 0.25rem 0 0.35rem;
}

#post-lang-switcher-2026-1-22 .post-lang-toggle-btn {
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

#post-lang-switcher-2026-1-22 .post-lang-radio {
  position: absolute;
  opacity: 0;
  pointer-events: none;
}

#post-lang-switcher-2026-1-22 [data-lang-section="en"],
#post-lang-switcher-2026-1-22 [data-lang-section="zh"] {
  display: none;
}

#post-lang-switcher-2026-1-22 #post-lang-en-2026-1-22:checked ~ .post-lang-toggle label[for="post-lang-en-2026-1-22"],
#post-lang-switcher-2026-1-22 #post-lang-zh-2026-1-22:checked ~ .post-lang-toggle label[for="post-lang-zh-2026-1-22"] {
  background: #202020;
  border-color: #202020;
  color: #ffffff;
}

#post-lang-switcher-2026-1-22 #post-lang-en-2026-1-22:checked ~ [data-lang-section="en"] {
  display: block;
}

#post-lang-switcher-2026-1-22 #post-lang-zh-2026-1-22:checked ~ [data-lang-section="zh"] {
  display: block;
}

#post-lang-switcher-2026-1-22 [data-lang-section] > :first-child {
  margin-top: 0.2rem;
}
</style>

<div id="post-lang-switcher-2026-1-22">
  <input class="post-lang-radio" type="radio" id="post-lang-en-2026-1-22" name="post-lang-2026-1-22" checked>
  <input class="post-lang-radio" type="radio" id="post-lang-zh-2026-1-22" name="post-lang-2026-1-22">

  <div class="post-lang-toggle" role="group" aria-label="Language switch">
    <label class="post-lang-toggle-btn" for="post-lang-en-2026-1-22">English</label>
    <label class="post-lang-toggle-btn" for="post-lang-zh-2026-1-22">中文</label>
  </div>

  <section data-lang-section="en" markdown="1">

Generalization is the implicit alignment between neural networks and the underlying data distribution, shaped by both data and human perception. In diffusion models, this means generating novel, meaningful samples rather than reproducing training examples.

However, it is not trivial that, among all solutions that fit the training data, neural networks will **automatically** choose ones that also generalize well to unseen data and therefore generate truly new samples.

<p style="text-align:center;">
  <img src="/images/notes/2026-1-22-1.png" alt="Generalization in diffusion models" style="display:block; width:65%; max-width:820px; margin:0 auto;" />
</p>

In our [ICLR 2026 paper](https://openreview.net/forum?id=57THeGgNAN), we show that this ability is not just because networks are powerful function approximators. It is more tightly connected to **their ability to extract and leverage structure** from training data, and to learn balanced, informative representations that organize data and adapt to complex distributions. Read more in the [official website](https://la0ka1.github.io/diffusion-gen-from-rep/) and the [slides](https://drive.google.com/file/d/12A0cRa1vq_kCqEHYl_2rMLuMIZv64RmV/view?usp=sharing).

  </section>

  <section data-lang-section="zh" markdown="1">

扩散模型的泛化能力从何而来？换言之，扩散模型凭何从有限样本中学习分布，并生成新样本？从分数匹配（score matching）角度出发，如果训练数据足以刻画真实分布，并且网络优化充分，那么模型会学到最优的去噪/分数函数用于生成；此时我们把网络看作理想黑箱。但在有限样本下，训练损失函数并不保证模型学到真实分布；相反它鼓励网络拟合、记忆训练样本，导致模型重复生成训练集图像。

<p style="text-align:center;">
  <img src="/images/notes/2026-1-22-1.png" alt="Generalization in diffusion models" style="display:block; width:65%; max-width:820px; margin:0 auto;" />
</p>

因此泛化不只是因为是网络表达力强（否则会倾向于过拟合），而是它对数据的理解能力强，与数据分布之间具有某种天然的结构亲和性。在我们[发表于 ICLR 2026 的论文](https://openreview.net/forum?id=57THeGgNAN)中，我们从两层非线性网络出发对这一点进行分析。理论与实验均表明，网络能够高效抽取数据结构并学习合理表征，从而获得这种亲和性，或者说泛化能力。更多细节参见[博客](https://la0ka1.github.io/diffusion-gen-from-rep/)。

  </section>
</div>

<script>
(function () {
  var container = document.getElementById("post-lang-switcher-2026-1-22");
  if (!container) return;

  var en = container.querySelector("#post-lang-en-2026-1-22");
  var zh = container.querySelector("#post-lang-zh-2026-1-22");
  if (!en || !zh) return;

  var storageKey = "post-lang-2026-1-22";

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
