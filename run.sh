#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"
if [ $# = 0 ]
then
    echo "Dont forget to mention the language -> ./run.sh lang"
    exit
else
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python3 get-pip.py

  pip3 install virtualenv
  virtualenv -p python3 f2s
  . f2s/bin/activate

  pip3 install --upgrade pip
  pip3 install -r requirements.txt

  sh downgen.sh $1 https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/cc.$1.300.vec.gz
  deactivate
fi
