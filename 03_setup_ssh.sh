#!/bin/bash

ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''
cp $HOME/.ssh/id_rsa.pub $HOME/.ssh/authorized_keys
chmod 0600 $HOME/.ssh/authorized_keys
ssh -o StrictHostKeyChecking=no localhost hostname
ssh -o StrictHostKeyChecking=no `hostname` hostname

