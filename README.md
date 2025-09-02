# PSP Dev Template

Sinatra + Tailwind CSS + DaisyUI template with demo system.

## ⚠️ IMPORTANT AI INSTRUCTIONS ⚠️

**READ THIS FIRST EVERY TIME** when setting up this environment:

### Correct Setup Process:
1. Clone ENV repository as main project directory
2. Pull PROJECT git content INTO the env/ directory (merge content, NOT as separate repository)
3. Delete app.rb.template files to prevent conflicts
4. Run npm run build and ruby app.rb

### Example Commands:
```bash
# Step 1: Clone env repository
git clone https://github.com/everysundays/env.git project-name

# Step 2: Go into project directory 
cd project-name

# Step 3: Add project repository as remote and pull content
git remote add project-repo https://github.com/user/project-repo.git
git pull project-repo main --no-rebase

# Step 4: Resolve conflicts and delete template files
rm app.rb.template
git add . && git commit -m "Merged project content"

# Step 5: Build and run
npm run build
ruby app.rb
```

**WRONG:** Do NOT clone project as separate repository inside env/
**RIGHT:** Pull project content directly into env repository structure

---

## Quick Start

1. init/clone your project git inside env/
2. install dependencies, compile css, and run demo app

```bash
npm i
npm run build             # to one-time generate app.css
ruby demo.rb              # to See examples
```

Open http://localhost:4567/