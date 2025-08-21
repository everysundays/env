# PSP Dev Template

Sinatra + Tailwind CSS + DaisyUI template with demo system.

## Quick Start

```bash
npm install
ruby demo.rb              # See examples
```

Open http://localhost:4567/

## Usage

**Start fresh:**
1. Copy `app.rb.template` to `app.rb`
2. Copy `public/css/tailwind.css.template` to `public/css/tailwind.css`
3. Copy template files from `views/*.template` to `views/` (remove .template extension)
4. Run `npm run build` to generate CSS
5. Start building your app!

**Start your app:**
```bash
ruby app.rb               # Your custom app
```

**See examples:**
- `ruby demo.rb` - Complete showcase
- `demo/` - Example templates and components
- `*.template` files - Starting point templates

## Dependencies
- Ruby 3.2.8+ 
- Node.js 18+
- Packages: [@psp-asia/layout](https://npmjs.com/package/@psp-asia/layout), [@psp-asia/debug-mode](https://npmjs.com/package/@psp-asia/debug-mode)
