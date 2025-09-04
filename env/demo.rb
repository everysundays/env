# frozen_string_literal: true
# Demo Application - Complete showcase of PSP features
# Run: ruby demo.rb

require "sinatra"

set :public_folder, File.join(__dir__, "public")
set :views, File.join(__dir__, "demo")

# Disable caching for development
configure :development do
  set :static_cache_control, [:public, :no_cache, :no_store, :must_revalidate]
end

# Demo homepage - Framework versions showcase
get "/" do
  @page_title = "PSP Template Demo"
  @get_styles = ["/css/app.css", "/demo/demo.css"]
  @get_scripts = ["/demo/demo.js"]
  erb :index
end

# Grid demo page
get "/grid" do
  @page_title = "Grid System Demo"
  @get_styles = ["/css/app.css", "/demo/demo.css", "node_modules/@psp-asia/layout/debug.css"]
  @get_scripts = ["/demo/demo.js", "node_modules/@psp-asia/layout/debug.js"]
  erb :grid
end

# DaisyUI demo page with enhanced highlighting
get "/daisyui" do
  @page_title = "DaisyUI Components Demo"
  @get_styles = ["/css/app.css", "/demo/demo.css", "node_modules/@psp-asia/layout/debug.css"]
  @get_scripts = ["/demo/demo.js", "node_modules/@psp-asia/layout/debug.js"]
  erb :daisyui
end

# Serve debug files from node_modules for development
get "/node_modules/@psp-asia/layout/debug.css" do
  content_type :css
  send_file File.join(__dir__, "node_modules", "@psp-asia", "layout", "debug.css")
end

get "/node_modules/@psp-asia/layout/debug.js" do
  content_type 'application/javascript'
  send_file File.join(__dir__, "node_modules", "@psp-asia", "layout", "debug.js")
end


