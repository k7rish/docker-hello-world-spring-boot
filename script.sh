#!/bin/bash
sshpass -p '123456' ssh -o StrictHostKeyChecking=no ubuntu@3.110.148.170
sudo docker run -dit -p 4000:3000 605580347753.dkr.ecr.ap-south-1.amazonaws.com/java:latest
sudo docker ps
)"
