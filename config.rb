###
# Blog settings
###

Time.zone = "Pacific Time (US & Canada)"

activate :blog do |blog|
  # blog.prefix = "blog"
  # blog.permalink = ":year/:month/:day/:title.html"
  # blog.sources = ":year-:month-:day-:title.html"
  # blog.taglink = "tags/:tag.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/:num"
  blog.default_extension = ".haml"
end

page "/feed.xml", :layout => false

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
  activate :minify_html
  activate :gzip
end

activate :livereload
activate :syntax

require './code'
