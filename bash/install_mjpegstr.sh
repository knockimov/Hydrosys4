#!/bin/bash


#Debug enable next 3 lines
exec 5> install.txt
BASH_XTRACEFD="5"
set -x
# ------ end debug





### -- WIFI setup --- STANDARD





install_mjpegstr ()
{
cd /home/pi

sudo apt-get -y update

sudo rm -r mjpg-streamer

sudo apt-get -y install cmake libjpeg8-dev

sudo git clone https://github.com/jacksonliam/mjpg-streamer.git

cd mjpg-streamer/mjpg-streamer-experimental

sudo make

sudo make install

cd ..
cd ..

}


# --- RUN the functions


install_mjpegstr