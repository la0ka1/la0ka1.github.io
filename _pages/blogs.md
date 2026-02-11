---
permalink: /blogs/
title: "Zekai's Blogs"
author_profile: true
redirect_from: 
  - /blogs/
  - /blogs.html
---

{% assign blog_posts = site.posts | where_exp:"post","post.tags contains 'blogs'" %}

<style>
  .blog-list {
    list-style: none;
    padding-left: 0;
    margin-top: 1.5rem;
  }

  .blog-item {
    margin-bottom: 1.75rem;
    border-left: 2px solid #e0e0e0;
    padding-left: 0.75rem;
  }

  .blog-header {
    display: flex;
    align-items: baseline;
    gap: 0.75rem;
    flex-wrap: wrap;
  }

  .blog-date {
    font-size: 1rem;
    color: #888;
    white-space: nowrap;
  }

  .blog-title {
    font-size: 1.25rem;
    font-weight: 400;
    text-decoration: none;
  }

  .blog-title:hover {
    text-decoration: underline;
  }

  .blog-excerpt {
    margin-top: 0.3rem;
    font-size: 0.95rem;
    color: #555;
  }

</style>

<ul class="blog-list">
{% for post in blog_posts %}
  <li class="blog-item">
    <div class="blog-header">
      <span class="blog-date">
        {{ post.date | date: "%Y-%m-%d" }}
      </span>
      <a class="blog-title" href="{{ post.url | relative_url }}">
        {{ post.title }}
      </a>
    </div>
    {% if post.excerpt %}
      <div class="blog-excerpt">
        {{ post.excerpt | strip_html | truncate: 200 }}
      </div>
    {% endif %}
  </li>
{% endfor %}
</ul>

<div id="clustrmaps-widget">
  <script type="text/javascript" id="clustrmaps"
    src="//clustrmaps.com/map_v2.js?d=PkxOa_m9keeNK9BCYU7BJqh8iaLghjKUNdqxzRKn8no&cl=ffffff&w=160">
  </script>
</div>


<!-- <div id="clustrmaps-widget">
<script type="text/javascript" id="clustrmaps" src="//clustrmaps.com/map_v2.js?d=PkxOa_m9keeNK9BCYU7BJqh8iaLghjKUNdqxzRKn8no&cl=ffffff&w=a"></script>
</div> -->





<!-- {% if site.author.googlescholar %}
  <div class="wordwrap">You can also find my articles on <a href="{{site.author.googlescholar}}">my Google Scholar profile</a>.</div>
{% endif %} -->


<!-- New style rendering if publication categories are defined -->
<!-- {% if site.publication_category %}
  {% for category in site.publication_category  %}
    {% assign title_shown = false %}
    {% for post in site.publications reversed %}
      {% if post.category != category[0] %}
        {% continue %}
      {% endif %}
      {% unless title_shown %}
        <h2>{{ category[1].title }}</h2><hr />
        {% assign title_shown = true %}
      {% endunless %}
      {% include archive-single.html %}
    {% endfor %}
  {% endfor %}
{% else %}
  {% for post in site.publications reversed %}
    {% include archive-single.html %}
  {% endfor %}
{% endif %} -->

