---
title: "The (non-)explainability of deep learning"
layout: archive
permalink: /blogs/2025-10-20-unexplainable/
tags: [blogs]
---

One reason deep learning performs so well in large-data regimes, often surpassing both humans and earlier fully explainable ML methods, is its <span style="color:darkred;">non</span>-explainability.

<figure style="text-align:center;">
  <img src="/images/blogs/2025-10-20-1.png" alt="Black-box vs. transparent models" style="display:block; width:65%; max-width:860px; margin:0 auto;" />
  <figcaption style="font-size:0.88em; color:#555;">
    Deep learning is like replacing the windshield with a smart screen full of powerful algorithms, where you have to trust the black box. Traditional methods (e.g., linear algebra) are like seeing through a glass windshield: much more explainable, but they also take more care.
  </figcaption>
</figure>

<!--more-->

Earlier ML models were largely human-crafted. We made explicit assumptions and designed optimal solutions under those assumptions. This made them constrained by what humans could clearly define. In other words, what humans did not understand, these models usually could not capture either. (The upside is that when these models fail, we often know why: assumptions are violated by real data.)

Deep learning is different. We build a high-capacity structure **without specifying exact functions of each layer**, then let data and optimization shape its behavior. These models can exceed human performance by discovering patterns that are difficult to articulate, and by learning robust rules automatically. They can also make severe mistakes.

The trade-off is bittersweet: we hand over control to complex systems and rely on mechanisms we only partially understand. The question is not full explainability versus zero explainability, but how to build reliable, testable abstractions that are useful for both science and deployment.


<!-- Do we need full explainability or no explainability? Probably neither, as we currently have an in-between method: we find coarse, abstract rules for harnessing large models and identify layers/prior/circuits that are understandable to humans, just as we do in solid-state physics and brain sciences. -->
