FROM jekyll/jekyll:3.0.2
MAINTAINER Scott Numamoto <scott.numamoto@pioneers.berkeley.edu>

VOLUME /srv/jekyll
EXPOSE 4000

ENTRYPOINT ["/srv/jekyll"]
CMD ["jekyll serve"]