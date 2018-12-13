# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions


# Layouts
# https://middlemanapp.com/basics/layouts/


# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end


# Use kramdown for md rendering
set :markdown_engine, :kramdown

# Set time zone
# set :time_zone, 'America/Los_Angeles'

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

###
## Asset settings
###
activate :relative_assets
set :relative_links, true


# Sprockets asset compilation
activate :sprockets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Autoprefixer extension
activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end



###
## Google Analytics settings
###
# activate :google_analytics do |ga|
  # ga.tracking_id = 'UA-XXXXXXX-X' # Replace with your property ID.

  # Removing the last octet of the IP address (default = false)
  # ga.anonymize_ip = false

  # Tracking across a domain and its subdomains (default = nil)
  # ga.domain_name = 'example.com'

  # Tracking across multiple domains and subdomains (default = false)
  # ga.allow_linker = false

  # Enhanced Link Attribution (default = false)
  # ga.enhanced_link_attribution = false

  # Log detail messages to the console (default = false)
  # ga.debug = false

  # Trace debugging will output more verbose information to the console (default = false)
  # ga.debug_trace = false

  # Disable extension (default = false)
  # ga.disable = false

  # Testing your implementation without sending hits (default = true) in development
  # ga.test = true

  # Compress the JavaScript code (default = false)
  # ga.minify = false

  # Output style - :html includes <script> tag (default = :html)
  # ga.output = :js
# end

###
## Syntax highlighting for code samples
###
activate :syntax

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings
configure :build do
  activate :minify_css
  activate :minify_javascript

  # Set production settings for Disqus
  activate :disqus do |d|
    # Set Disqus short name for production. Read the following for more info:
    # https://github.com/simonrice/middleman-disqus#important-do-not-use-real-shortnames-during-development
    d.shortname = nil # replace with your short name for prod
  end
end
