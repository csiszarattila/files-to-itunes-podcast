require "rubygems"
require "bundler/setup"

require 'podcast'

map '/podcast' do
  podcast = Podcast::Feed.new()

  dir = Dir.pwd + '/Downloads'
  podcast_file = 'podcast.rss'
  podcast.base = "http://itunespodcast.dev/public"
  podcast.link = "http://itunespodcast.dev/"
  podcast.title = "Podcasts"
  podcast.about = "Podcast"
  podcast.image = "http://itunespodcast.dev/public/podcast.jpg"
  podcast.version = '2.0'
  podcast.description = "Podcasts"
  podcast.add_dir(dir)

  run Proc.new { |env| [200, {"Content-Type" => "application/rss+xml"}, [podcast.get_rss().to_s]] }
end

map '/public' do
  run Rack::Directory.new(Dir.pwd + '/Downloads')
end
