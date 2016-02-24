# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.indigo-recruitment.co.uk"

SitemapGenerator::Sitemap.create do
  
  add who_we_are_path, :changefreq => 'monthly', :priority => 0.9
  add what_we_do_path, :changefreq => 'monthly', :priority => 0.9
  add get_in_touch_path, :changefreq => 'monthly', :priority => 0.5
  add privacy_path, :changefreq => 'monthly', :priority => 0.5
  add terms_path, :changefreq => 'monthly', :priority => 0.5
  
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
