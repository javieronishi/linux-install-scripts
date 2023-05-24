#!/bin/sh
sleep 2s
sudo apt install openjdk-11-jdk -y
echo '#JAVA' >> ~/.profile
echo 'export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"' >> ~/.profile
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.profile
echo '' >> ~/.profile
echo "Java version ..."
java -version
sleep 2s

