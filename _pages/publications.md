---
permalink: /publications/
title: "Selected Publications"
author_profile: true
redirect_from: 
  - /publications.html
---


<span>*</span> indicates equal contribution.

<style>
  .publication-list {
    margin-top: 0.5rem;
    display: grid;
    gap: 0;
  }

  .publication-item {
    margin: 0;
    padding: 0.6rem 0;
    border-bottom: 1px solid #ececec;
    background: transparent;
  }

  .publication-item:last-child {
    border-bottom: none;
  }

  .publication-item p {
    margin: 0;
  }

  .publication-item .publication-title {
    font-family: Georgia, "Times New Roman", serif;
    font-size: 0.95rem;
    line-height: 1.4;
    text-wrap: pretty;
  }

  .publication-item .publication-title a {
    color: #1f2937;
    text-decoration: none;
  }

  .publication-item .publication-title a:hover {
    color: #1d4e89;
    text-decoration: underline;
  }

  .publication-item .publication-meta {
    margin-top: 0.18rem;
    font-size: 0.85rem;
    color: #555;
    line-height: 1.45;
  }

  .publication-authors {
    font-size: 0.88rem;
    color: #4b5563;
  }

  .publication-item .publication-summary {
    margin-top: 0.15rem;
    font-size: 0.85rem;
    line-height: 1.5;
    color: #6b7280;
    font-style: italic;
  }

  .publication-item .publication-links {
    margin-top: 0.22rem;
    font-size: 0.82rem;
    line-height: 1.5;
  }

  .publication-item .publication-links a {
    display: inline-block;
    margin-right: 0.55rem;
    color: #2f4f7f;
    font-weight: 500;
    text-decoration: none;
    border-bottom: 1px dotted #aebcd1;
  }

  .publication-item .publication-links a:hover {
    color: #1d4e89;
    border-bottom-style: solid;
  }

  .publication-venue {
    display: inline;
    margin-right: 0.35rem;
    color: #1d4e89;
    font-family: Georgia, "Times New Roman", serif;
    font-size: 0.88rem;
    font-weight: 700;
    letter-spacing: 0.01em;
  }

  .publication-venue::after {
    content: "·";
    margin-left: 0.4rem;
    color: #b5b5b5;
    font-weight: 400;
  }

  .publication-item .publication-links a[href*="arxiv.org"]      { color: #8f1d1d; border-bottom-color: #e8b8b8; }
  .publication-item .publication-links a[href*="alphaxiv.org"]   { color: #8a5a00; border-bottom-color: #ecd09a; }
  .publication-item .publication-links a[href*="/notes/"]        { color: #1d4e89; border-bottom-color: #bfd5f3; }
  .publication-item .publication-links a[href*="github.com"]     { color: #166534; border-bottom-color: #b8e0c5; }
  .publication-item .publication-links a[href*="drive.google.com"] { color: #7c3f00; border-bottom-color: #efc79d; }
  .publication-item .publication-links a[href*="openaccess.thecvf.com"] { color: #1e4b9a; border-bottom-color: #c3d6ff; }
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
      Learning good representations is central to novel and meaningful generative modelling.
    </p>
    <p class="publication-links">
      <a href="https://la0ka1.github.io/diffusion-gen-from-rep/">Blog</a>
      <a href="https://github.com/la0ka1/diffusion-gen-from-rep">Code</a>
      <!-- <a href="https://drive.google.com/file/d/12A0cRa1vq_kCqEHYl_2rMLuMIZv64RmV/view?usp=sharing">Slides</a> -->
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
      Diffusion models collapse to a low-diversity/quality mode when trained on their own outputs.
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
      <a href="https://openreview.net/forum?id=BE6QmLdJqY"><strong>Understanding Representation Dynamics of Diffusion Models via Low-Dimensional Modeling</strong></a>
    </p>
    <p class="publication-meta">
      <span class="publication-venue">NeurIPS 2025</span>
      <span class="publication-authors">Xiao Li*, <strong>Zekai Zhang*</strong>, Xiang Li, Siyi Chen, Zhihui Zhu, Peng Wang, Qing Qu</span>
    </p>
    <p class="publication-summary">
      How time conditioning shapes diffusion representations and how it can diagnose overfitting.
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
<!-- 
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
  </div> -->
</div>
