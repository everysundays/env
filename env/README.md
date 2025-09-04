# Development Environment

This repository contains the PSP-Asia development environment with DaisyUI components and modular CSS architecture.

## Structure

- `env/` - Main development environment
  - Sinatra web application
  - DaisyUI v5.1.6 with Tailwind CSS v4
  - Modular CSS with separate color and typography files
  - Component showcase and demos

## Getting Started

```bash
cd env/
npm install
npm run dev    # Start Tailwind watcher
ruby app.rb    # Start Sinatra server (port 4567)
```

## Features

- Modular CSS architecture (colors.css, typography.css)  
- Multi-language typography support (EN, TH, JP)
- DaisyUI component showcase with atomic design organization
- Responsive navigation and mobile-friendly layouts