#!/bin/bash
sshpass -p '123456' ssh -o StrictHostKeyChecking=no ubuntu@3.110.148.170 "(
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 605580347753.dkr.ecr.ap-south-1.amazonaws.com
sudo docker run -dit -p 4000:3000 605580347753.dkr.ecr.ap-south-1.amazonaws.com/java:latest
sudo docker ps
)"
