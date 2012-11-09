Its basicly create a local web server to generate a podcast rss from a bunch of mp3s to add iTunes as a podcast subscription.

# Using #

Download the repo and just simply install required gems via bundler

	bundle install

Serve the rackup file config.ru with any rack compatible web server.

	rackup config.ru

After server starts, the podcast is available on the hosts address' /podcast link, like:

	http://localhost:9292/podcast

You can change hostname, etc. by configuring the rackup webserver.

Add this source to your podcast library in iTunes by Advanced menu's 'Subscribe to Podcast...' function, then the podcast with downloads should be appear.

# Using with Pow #
	
If you use pow -like me-, its makes even easier to serve the rss and the files. All you need to add this directory to your pow hosts.

# Note #

I know it seems a hassle to use a local web server for just serving mp3s, but as far as I know there is no other way to add these files as a podcast to iTunes automatically.
