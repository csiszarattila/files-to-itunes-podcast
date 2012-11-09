require "rubygems"
require "bundler/setup"

require 'podcast'

map '/podcast' do
  podcast = Podcast::Feed.new()

  dir = Dir.pwd + '/Downloads'
  podcast_file = 'podcast.rss'
  podcast.base = "http://iplayer.dev/public"
  podcast.link = "http://iplayer.dev/"
  podcast.title = "BBC iPlayer Podcast"
  podcast.about = "BBC iPlayer"
  podcast.image = "http://iplayer.dev/public/podcast.jpg"
  podcast.version = '2.0'
  podcast.description = "BBC"
  podcast.add_dir(dir)

  run Proc.new { |env| [200, {"Content-Type" => "application/rss+xml"}, [podcast.get_rss().to_s]] }
end

map '/public' do
  run Rack::Directory.new(Dir.pwd + '/Downloads')
end
