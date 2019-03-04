# 

This Dockerfile is useful when working in Network automation project. The image is based on Ubuntu 18.04


## Usage
1. Clone the repo

```
git clone https://github.com/danielmacuare/dockernet.git
```

2. You can edit the the Dockerfile or requirements.txt file to add any extra packets you might want. If not, you can just build the image the following way:

```
docker build -f /.Dockerfile -t danmac/dockernet:18.04 .
```


3. Run and access the container via bash.
```
docker run -it --rm --name dockernet -t danielmac/dockernet:18.04 /bin/bash
```
4. Enjoy!
