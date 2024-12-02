sudo apt-get update
sudo apt-get install gcc zlib1g-dev build-essential unzip

wget https://download.oracle.com/graalvm/21/latest/graalvm-jdk-21_linux-x64_bin.tar.gz
tar -xvzf graalvm-jdk-21_linux-x64_bin.tar.gz

sudo mkdir -p /usr/lib/graal
sudo mv graalvm-jdk-21*/* /usr/lib/graal
