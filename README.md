# Docker

### V1 - Running Docker 

Navigate to within your website, then run

    docker run -d -v "$(pwd):/srv/jekyll" -p 4000:4000 numascott/jekyll serve

### V2 - How to run Jekyll within Docker with jekyll/jekyll

Open up Kitematic (Beta) and click on Docker CLI
Navigate to folder that contains website folder

Run the following command, but make sure to replace "website" with the name of the folder than holds your website

    docker run --rm --label=jekyll --volume=$(pwd)/website:/srv/jekyll -it -p $(docker-machine ip default):4000:4000 jekyll/jekyll

### BOTH - How to Access now running website

Once the server is running, run the following command to navigate to the site in browser.

    docker-machine ip default

Copy and paste the result which should look like an ip into your browser and add ":4000". It may look like <http://192.168.99.100:4000/>

### Miscellaneous

To build an image

    $ docker build -t image-name .
    
To look inside the machine while it has an ENTRYPOINT set

    $ docker run -ti --rm --entrypoint sh <DOCKER_IMAGE>