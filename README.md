Its basicly create a local web server to generate a podcast rss from a bunch of mp3s to add iTunes as a podcast subscription. 
The mp3s can be any files, but I use mainly for downloads from [get_iplayer](http://linuxcentre.net/getiplayer) script which downloads content from BBC iPlayer Radio.

# Using #

Download the repo and just simply install required gems via bundler

	bundle install

Set your get_iplayer default download dir to the downloaded repo's Downloads dir, setting the IPLAYER_OUTDIR environment var, for example.

	export IPLAYER_OUTDIR="~/iPlayer/Downloads"

Serve the rackup file config.ru with any rack compatible web server.

	rackup config.ru

After server starts, the podcast is available on the hosts address' /podcast link, like:

	http://localhost:9292/podcast

You can change hostname, etc. by configuring the rackup webserver.

Add this source to your podcast library in iTunes by Advanced menu's 'Subscribe to Podcast...' function, then the podcast with downloads should be appear.

# Using with Pow #
	
If you use pow -like me-, its makes even easier to serve the rss and the files. All you need to add this directory to your pow hosts.

# Caveats with get_iplayer #

I use the forked and improved [github version of get_iplayer](https://github.com/dinkypumpkin/get_iplayer).

According to the [tagging documentation](https://github.com/dinkypumpkin/get_iplayer/wiki/tagging) you must have the MP3::Tag perl module in order to tag the downloaded contents.

# Note #

I know it seems a hassle to use a local web server for just serving mp3s, but as far as I know there is no other way to add these files as a podcast to iTunes automatically.

# Disclamer #

Don't use this to publish BBC iPlayer Radio content over the web, use for only private reasons. I just use this to upload content to my Ipod beacause I dont have always internet connection to listen programs.