# Hugo blog management commands

# Show available commands
default:
    @just --list

# Create a new blog post
new-post title:
    hugo new posts/{{title}}.md
    @echo "Created new post: content/posts/{{title}}.md"

# Start development server
dev:
    hugo server --port 1313 --bind 0.0.0.0 --buildDrafts

# Start development server on different port
dev-alt:
    hugo server --port 1314 --bind 0.0.0.0 --buildDrafts

# Build the site for production
build:
    hugo --minify

# Clean build artifacts
clean:
    rm -rf public/
    rm -rf resources/

# Check for broken links and validate
check:
    hugo --minify --buildDrafts --buildFuture

# Deploy to GitHub Pages (commit and push)
deploy message="Update blog":
    git add .
    git commit -m "{{message}}"
    git push origin main

# Quick deploy with timestamp
deploy-quick:
    @just deploy "Update blog - $(date '+%Y-%m-%d %H:%M')"

# Preview a draft post
preview:
    hugo server --port 1313 --buildDrafts --buildFuture

# Show site statistics
stats:
    @echo "=== Hugo Site Statistics ==="
    @echo "Posts: $(find content/posts -name '*.md' | wc -l)"
    @echo "Pages: $(find content -name '*.md' | wc -l)"
    @echo "Theme: $(grep '^theme' hugo.toml | cut -d"'" -f2)"
    @echo "Base URL: $(grep '^baseURL' hugo.toml | cut -d"'" -f2)"

# Update theme submodule
update-theme:
    git submodule update --remote themes/PaperMod
    @echo "Updated PaperMod theme to latest version"

# Create a new page (not a blog post)
new-page title:
    hugo new {{title}}.md
    @echo "Created new page: content/{{title}}.md"