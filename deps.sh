sudo apt install libapr1 libapr1-dev libomp-dev libgmp3-dev python3-pip make build-essential openjdk-21-jdk-headless curl rustup
curl -fsSL https://deb.nodesource.com/setup_lts.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt install nodejs
pip install lazyme --break-system-packages
rustup default stable
