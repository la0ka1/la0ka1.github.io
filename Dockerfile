# Local preview image for the Jekyll site (GitHub Pages compatible).
# Build & run with `docker compose up` (see compose.yaml), or manually:
#   docker build -t jekyll-site .
#   docker run --rm -p 4000:4000 -p 35729:35729 -v "$PWD":/usr/src/app jekyll-site
FROM ruby:3.2

WORKDIR /usr/src/app

# Native extensions (sassc, ffi, ...) need a compiler.
RUN apt-get update \
 && apt-get install -y --no-install-recommends build-essential \
 && rm -rf /var/lib/apt/lists/*

# Gemfile.lock is git-ignored, so copy it only if present (the * makes it optional).
# The lock may have been generated on another CPU arch; register both Linux
# platforms so the same lock works on Apple Silicon and Intel machines.
COPY Gemfile Gemfile.lock* ./
RUN bundle lock --add-platform aarch64-linux x86_64-linux \
 && bundle install

COPY . .

# 4000 = site, 35729 = livereload websocket
EXPOSE 4000 35729

# --force_polling: file-change detection on bind mounts (macOS/Windows)
# --livereload:    browser auto-refresh on rebuild
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]
