# Hugo Blog

A personal blog built with Hugo and the PaperMod theme.

## Quick Start

This project uses [just](https://github.com/casey/just) for task automation. Install it first:

```bash
# macOS
brew install just

# Or download from GitHub releases
```

### Common Commands

```bash
# Show all available commands
just

# Create a new blog post
just new-post "my-awesome-post"

# Start development server
just dev

# Build for production
just build

# Deploy to GitHub Pages
just deploy "Add new post about X"

# Quick deploy with timestamp
just deploy-quick
```

### Manual Hugo Commands

If you prefer using Hugo directly:

```bash
# Create new post
hugo new posts/my-post.md

# Start dev server
hugo server

# Build site
hugo --minify
```

## Project Structure

```
├── content/
│   ├── posts/          # Blog posts
│   └── _index.md       # Homepage content
├── themes/PaperMod/    # Theme submodule
├── archetypes/
│   └── posts.md        # Post template
├── hugo.toml           # Hugo configuration
├── justfile            # Task automation
└── .github/workflows/  # GitHub Actions
```

## Features

- 🚀 Fast static site generation with Hugo
- 🎨 Clean, responsive PaperMod theme
- 🌙 Dark/light mode toggle
- 📱 Mobile-friendly design
- 🔍 SEO optimized
- 🚀 Auto-deployment via GitHub Actions

## Development

The site auto-deploys to GitHub Pages when you push to `main`. For local development:

1. `just dev` - Start development server
2. Edit content in `content/posts/`
3. `just deploy "Your commit message"` - Deploy changes

## Configuration

Edit `hugo.toml` to customize:
- Site title and description
- Menu items
- Social media links
- Theme settings
