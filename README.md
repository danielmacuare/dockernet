# 

This Dockerfile comes handy when working with Network automation projects. The image is based on Ubuntu 18.04

## Included
1. Packages Included:

```
python2 and 3
mtr
tcpdump
tcptraceroute
ansible
curl
nano
vim-tiny
```

2. Python modules
```
virtualenv
netmiko
napalm
napal-ansible
nornir
junos-eznc
```

## Usage
1. Clone the repo

```
git clone https://github.com/danielmacuare/dockernet.git
```

2. Get inside it
```
cd dockernet
```

3. You can edit the the Dockerfile or requirements.txt file to add any extra packets you might want. If not, you can just build the image the following way:

```
docker build -f Dockerfile -t danmac/dockernet:18.04 .
```

4. Run and access the container via bash.
```
docker run -it --rm --name dockernet -t danmac/dockernet:18.04
```

4. Enjoy!
