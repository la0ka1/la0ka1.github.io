---
permalink: /
title: "张泽楷 (Zekai Zhang)"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% comment %}
Low-key version for the F-1 visa renewal (Oct 2026). The original Research
paragraph and News list are kept in Liquid comment blocks below; Liquid drops
them at build time, so they are not in the published HTML. To switch back,
paste the originals back in place of the visa versions, or restore everything
at once from the last full version (commit 7d464d7):
  git checkout 7d464d7 -- _pages/about.md _pages/blogs.md _pages/publications.md _data/navigation.yml _config.yml
The CV is hidden separately (see the note below and _pages/cv.md).
{% endcomment %}

<div class="home" markdown="1">

<!-- CV hidden for now. To bring it back, restore files/cv_zekai.pdf, point _pages/cv.md at it, and use:
## About Me <a class="cv-link" href="/files/cv_zekai.pdf">[CV]</a>
-->

## About Me

I am a third-year PhD student in [EECS at the University of Michigan](https://ece.engin.umich.edu/), advised by Prof. [Qing Qu](https://qingqu.engin.umich.edu/). Before that, I received my bachelor's degree from the [Department of Automation, Tsinghua University](https://www.au.tsinghua.edu.cn/en/).

<!-- I have also collaborated with Prof. [Li Yi](https://ericyi.github.io/) and Prof. [Wenkai Lu](https://www.au.tsinghua.edu.cn/en/info/1078/3204.htm). -->

## Research

I develop simplified mathematical theory to understand how computational models capture underlying patterns in complex datasets, and how these patterns can help explain and improve methods for text and image generation.

{% comment %} Original Research paragraph:
I work on effective theory for generative models (especially diffusion models), via representation learning and simplified models. My goal is to help people understand, disenchant, and collaborate with generative models better.
{% endcomment %}

<!-- Representation learning would be the brain science for AI. -->

## News

<ul class="news" markdown="0">
  <li>
    <span class="news-date">Aug 2026</span>
    <span>Gratefully wrapped up my internship at TikTok Seattle (May–Aug).</span>
  </li>
  <li>
    <span class="news-date">Jan 2026</span>
    <span>Passed my preliminary exam and advanced to PhD candidacy!</span>
  </li>
</ul>

<details class="news-older" markdown="0">
  <summary>Earlier news</summary>
  <ul class="news">
    <li>
      <span class="news-date">May 2024</span>
      <span>Awarded the <a href="https://micde.umich.edu/member/zekai-zhang/">MICDE Fellowship</a>.</span>
    </li>
  </ul>
</details>

{% comment %} Original News list:
<ul class="news" markdown="0">
  <li>
    <span class="news-date">Oct 2026</span>
    <details>
      <summary>One <span class="paper-link">paper</span> on diffusion language models is on arXiv!</summary>
      <div class="news-sub"><a href="https://arxiv.org/abs/2610.01016">Scaling and Distilling Text Embeddings for Better Diffusibility</a></div>
    </details>
  </li>
  <li>
    <span class="news-date">Aug 2026</span>
    <span>Gratefully wrapped up my internship at TikTok Seattle (May–Aug).</span>
  </li>
  <li>
    <span class="news-date">May 2026</span>
    <details>
      <summary>One <span class="paper-link">paper</span> accepted at ICML 2026, and a Silver Reviewer award.</summary>
      <div class="news-sub"><a href="https://arxiv.org/abs/2606.09718">Evaluating the Representation Space of Diffusion Models via Self-Supervised Principles</a></div>
    </details>
  </li>
  <li>
    <span class="news-date">Jan 2026</span>
    <details>
      <summary>One <span class="paper-link">paper</span> accepted at ICLR 2026.</summary>
      <div class="news-sub"><a href="https://arxiv.org/abs/2512.20963">Generalization of Diffusion Models Arises with a Balanced Representation Space</a>, with an <a href="https://drive.google.com/file/d/12A0cRa1vq_kCqEHYl_2rMLuMIZv64RmV/view?usp=sharing">oral talk</a> at DeepMath.</div>
    </details>
  </li>
  <li>
    <span class="news-date">Oct 2025</span>
    <details>
      <summary>Two <span class="paper-link">papers</span> accepted at NeurIPS 2025.</summary>
      <div class="news-sub"><a href="https://arxiv.org/abs/2509.16499">A Closer Look at Model Collapse: From a Generalization-to-Memorization Perspective</a></div>
      <div class="news-sub"><a href="https://arxiv.org/abs/2502.05743">Understanding Representation Dynamics of Diffusion Models via Low-Dimensional Modeling</a></div>
    </details>
  </li>
  <li>
    <span class="news-date">May 2025</span>
    <span>Top Reviewer award at ICML 2025.</span>
  </li>
  
</ul>

<details class="news-older" markdown="0">
  <summary>Earlier news</summary>
  <ul class="news">
    <li>
      <span class="news-date">May 2024</span>
      <span>Awarded the <a href="https://micde.umich.edu/member/zekai-zhang/">MICDE Fellowship</a>.</span>
    </li>
    <!-- <li>
      <span class="news-date">Sep 2023</span>
      <span>Awarded the National Scholarship of China.</span>
    </li> -->
  </ul>
</details>
{% endcomment %}

</div>
