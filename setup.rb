#!/usr/bin/env ruby
# frozen_string_literal: true

# PSP Environment Setup Script
# Initializes user project directory with template files

require 'fileutils'

PROJECT_DIR = 'project'
TEMPLATE_FILES = {
  'app.rb.template' => 'app.rb',
  'views/layout.erb.template' => 'views/layout.erb',
  'views/index.erb.template' => 'views/index.erb',
  'public/css/tailwind.css.template' => 'public/css/tailwind.css'
}

puts "🏥 PSP Environment Setup"
puts "Setting up your project in #{PROJECT_DIR}/"

# Create project directory structure
FileUtils.mkdir_p("#{PROJECT_DIR}/views")
FileUtils.mkdir_p("#{PROJECT_DIR}/public/css")

# Copy template files
TEMPLATE_FILES.each do |template, target|
  source = template
  destination = "#{PROJECT_DIR}/#{target}"
  
  if File.exist?(source)
    puts "📋 Copying #{source} → #{destination}"
    FileUtils.cp(source, destination)
  else
    puts "⚠️  Template file #{source} not found"
  end
end

# Initialize git repository in project directory
Dir.chdir(PROJECT_DIR) do
  unless Dir.exist?('.git')
    puts "🔧 Initializing git repository in #{PROJECT_DIR}/"
    system('git init')
    system('git add .')
    system('git commit -m "Initial commit from PSP template"')
    puts "✅ Git repository initialized"
  else
    puts "📂 Git repository already exists in #{PROJECT_DIR}/"
  end
end

puts
puts "🎉 Setup complete!"
puts
puts "Next steps:"
puts "1. cd #{PROJECT_DIR}"
puts "2. npm install (to get dependencies)"
puts "3. npm run build (to generate CSS)"
puts "4. ruby app.rb (to start your app)"
puts
puts "Your project now has its own git repository separate from the env template!"