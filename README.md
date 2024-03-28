# Base64-in-D

**A simple base64 encoder and decoder written in D using dlangui**

![Screenshot](https://raw.githubusercontent.com/Ferryry/Base64-in-D/main/Screenshot_20240328_034417.png)

## Build

Make sure you have installed libsdl2-dev, dub and a d-compiler

```
sudo wget https://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list
sudo apt update --allow-insecure-repositories && sudo apt -y --allow-unauthenticated install --reinstall d-apt-keyring && sudo apt update
sudo apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring
sudo apt-get install -y dmd-bin
sudo apt-get install -y dub
sudo apt-get install -y libssl-dev libevent-dev libsdl2-dev
```

Build this project by typing ```dub``` in your terminal (in root project directory, not outside!) 
