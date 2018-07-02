FROM ruby:2.5.1
MAINTAINER Scott Numamoto <scott.numamoto@pioneers.berkeley.edu>

# Install bundler for dependency management
RUN apt-get update -qq && apt-get install -y build-essential

# Add the enclosing dir to the image at /srv/jekyll
ADD . /srv/jekyll

# Use this folder as dir we will work from
WORKDIR /srv/jekyll

# Install dependencies
RUN bundle install

# Build the website
RUN bundle exec jekyll build

# Expose port 4000, the port Jekyll exposes by default
# This line is necessary for Dokku to know what port to be paying attention to
# http://dokku.viewdocs.io/dokku/networking/port-management/
EXPOSE 4000

# Serve the website when we run the image
CMD bundle exec jekyll serve
