#! /bin/bash
find /opt/codedeploy-agent/deploy-root/641c4afb-530e-451f-b763-325b53f86dbf/* -maxdepth 0 -type 'd' | grep -v $(stat -c '%Y:%n' /opt/codedeploy-agent/deployment-root/641c4afb-530e-451f-b763-325b53f86dbf/* | sort -t: -n | tail -1 | cut -d: -f2- | cut -c 3-) | xargs rm -rf
sudo rm -rf /home/ec2-user/*
