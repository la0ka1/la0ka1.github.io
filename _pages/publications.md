---
permalink: /publications/
title: "Selected Publications"
author_profile: true
redirect_from: 
  - /publications/
  - /publications.html
---


<span>*</span> indicates equal contribution.

<style>
  .publication-list {
    margin-top: 0.5rem;
    display: grid;
    gap: 0.45rem;
  }

  .publication-item {
    margin: 0;
    padding: 0.62rem 0.76rem;
    border: 1px solid #d3d8e0;
    border-left: 5px solid #6b7280;
    border-radius: 12px;
    background: #ffffff;
    box-shadow: 0 2px 8px rgba(15, 23, 42, 0.06);
  }

  .publication-item p {
    margin: 0;
  }

  .publication-title {
    font-size: 0.96rem;
    line-height: 1.36;
  }

  .publication-meta {
    margin-top: 0.52rem;
    font-size: 0.82rem;
    color: #444;
    line-height: 1.42;
  }

  .publication-authors {
    font-size: 0.88rem;
    color: #4b5563;
  }

  .publication-summary {
    margin-top: 0.44rem;
    font-size: 0.85rem;
    line-height: 1.46;
    color: #333;
    font-style: italic;
  }

  .publication-links {
    margin-top: 0.5rem;
    font-size: 0.8rem;
    line-height: 1.68;
  }

  .publication-links a {
    display: inline-block;
    margin: 0 0.22rem 0.06rem 0;
    padding: 0.06rem 0.42rem;
    border-radius: 999px;
    border: 1px solid #d4dae3;
    background: #f3f6fb;
    color: #2f4f7f;
    font-weight: 600;
    text-decoration: none;
    transition: background-color 0.15s ease, transform 0.15s ease;
  }

  .publication-links a:hover {
    transform: translateY(-1px);
    filter: brightness(0.98);
  }

  .publication-venue {
    display: inline-block;
    margin-right: 0.25rem;
    padding: 0.03rem 0.34rem;
    border-radius: 999px;
    border: 1px solid #dcdcdc;
    background: #ffffff;
    color: #4a4a4a;
    font-size: 0.88rem;
    font-weight: 700;
  }

  .publication-links a[href*="arxiv.org"] {
    color: #8f1d1d;
    border-color: #efb4b4;
    background: #fff0f0;
  }

  .publication-links a[href*="alphaxiv.org"] {
    color: #8a5a00;
    border-color: #f0d4a4;
    background: #fff6e5;
  }

  .publication-links a[href*="/blogs/"] {
    color: #1d4e89;
    border-color: #bfd5f3;
    background: #ecf4ff;
  }

  .publication-links a[href*="github.com"] {
    color: #166534;
    border-color: #b8e0c5;
    background: #eaf8ef;
  }

  .publication-links a[href*="drive.google.com"] {
    color: #7c3f00;
    border-color: #efc79d;
    background: #fff1e2;
  }

  .publication-links a[href*="openaccess.thecvf.com"] {
    color: #1e4b9a;
    border-color: #c3d6ff;
    background: #edf3ff;
  }
</style>

<div class="publication-list">
  <div class="publication-item">
    <p class="publication-title">
      <a href="https://openreview.net/forum?id=57THeGgNAN"><strong>Generalization of Diffusion Models Arises with a Balanced Representation Space</strong></a>
    </p>
    <p class="publication-meta">
      <span class="publication-venue">ICLR 2026</span>
      <span class="publication-authors"><strong>Zekai Zhang*</strong>, Xiao Li*, Xiang Li, Lianghe Shi, Meng Wu, Molei Tao, Qing Qu</span>
    </p>
    <p class="publication-summary">
      Diffusion models generalize by extracting underlying structures within the data, learning balanced and informative representations.
    </p>
    <p class="publication-links">
      <a href="{{ '/blogs/2026-2-10-diffusion-gen-from-rep/' | relative_url }}">Blog</a>
      <a href="https://github.com/la0ka1/diffusion-gen-from-rep">Code</a>
      <a href="https://drive.google.com/file/d/12A0cRa1vq_kCqEHYl_2rMLuMIZv64RmV/view?usp=sharing">Slides</a>
      <a href="https://arxiv.org/abs/2512.20963">arXiv</a>
      <a href="https://www.alphaxiv.org/abs/2512.20963">AlphaXiv</a>
    </p>
  </div>

  <div class="publication-item">
    <p class="publication-title">
      <a href="https://openreview.net/forum?id=6xCcjYa97j"><strong>A Closer Look at Model Collapse: From a Generalization-to-Memorization Perspective</strong></a>
    </p>
    <p class="publication-meta">
      <span class="publication-venue">NeurIPS 2025 (Spotlight)</span>
      <span class="publication-authors">Lianghe Shi*, Meng Wu*, Huijie Zhang, <strong>Zekai Zhang</strong>, Molei Tao, Qing Qu</span>
    </p>
    <p class="publication-summary">
      When diffusion models are iteratively trained with synthetic data, the generated distribution collapses toward a stable but low-diversity, low-quality mode.
    </p>
    <p class="publication-links">
      <a href="https://shilianghe007.github.io/model-collapse/index.html">Blog</a>
      <a href="https://github.com/shilianghe007/Model_Collapse">Code</a>
      <a href="https://arxiv.org/abs/2509.16499">arXiv</a>
      <a href="https://www.alphaxiv.org/abs/2509.16499">AlphaXiv</a>
    </p>
  </div>

  <div class="publication-item">
    <p class="publication-title">
      <a href="https://openreview.net/forum?id=HyESKJgPv6"><strong>Understanding Representation Dynamics of Diffusion Models via Low-Dimensional Modeling</strong></a>
    </p>
    <p class="publication-meta">
      <span class="publication-venue">NeurIPS 2025</span>
      <span class="publication-authors">Xiao Li*, <strong>Zekai Zhang*</strong>, Xiang Li, Siyi Chen, Zhihui Zhu, Peng Wang, Qing Qu</span>
    </p>
    <p class="publication-summary">
      Analyzes how time conditioning shapes diffusion representations and how these dynamics can diagnose overfitting.
    </p>
    <p class="publication-links">
      <a href="https://arxiv.org/abs/2502.05743">arXiv</a>
      <a href="https://www.alphaxiv.org/abs/2502.05743">AlphaXiv</a>
    </p>
  </div>

  <div class="publication-item">
    <p class="publication-title">
      <a href="https://proceedings.mlr.press/v238/min-kwon24a"><strong>Efficient Compression of Overparameterized Deep Models through Low-Dimensional Learning Dynamics</strong></a>
    </p>
    <p class="publication-meta">
      <span class="publication-venue">AISTATS 2024</span>
      <span class="publication-authors">Soo Min Kwon*, <strong>Zekai Zhang*</strong>, Dogyoon Song, Laura Balzano, Qing Qu</span>
    </p>
    <p class="publication-links">
      <a href="https://arxiv.org/abs/2311.05061">arXiv</a>
      <a href="https://www.alphaxiv.org/abs/2311.05061">AlphaXiv</a>
    </p>
  </div>

  <div class="publication-item">
    <p class="publication-title">
      <a href="https://openaccess.thecvf.com/content/ICCV2023/html/Liu_LeaF_Learning_Frames_for_4D_Point_Cloud_Sequence_Understanding_ICCV_2023_paper.html"><strong>LeaF: Learning Frames for 4D Point Cloud Sequence Understanding</strong></a>
    </p>
    <p class="publication-meta">
      <span class="publication-venue">ICCV 2023</span>
      <span class="publication-authors">Yunze Liu, Junyu Chen, <strong>Zekai Zhang</strong>, Jingwei Huang, Li Yi</span>
    </p>
    <p class="publication-links">
      <a href="https://openaccess.thecvf.com/content/ICCV2023/html/Liu_LeaF_Learning_Frames_for_4D_Point_Cloud_Sequence_Understanding_ICCV_2023_paper.html">OpenAccess</a>
    </p>
  </div>
</div>
