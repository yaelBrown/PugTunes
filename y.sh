echo "=== updating system ==="
sudo apt-get update
sudo apt-get upgrade
echo "=== installing git, nmap, apt-transport-https, curl ==="
sudo apt install -y git nmap apt-transport-https curl
curl -sSL https://dtcooper.github.io/raspotify/key.asc | sudo apt-key add -v -
echo 'deb https://dtcooper.github.io/raspotify raspotify main' | sudo tee /etc/apt/sources.list.d/raspotify.list
echo "=== updating system again ==="
sudo apt update
echo "=== installing raspotify, ffmpeg ==="
sudo apt install -y raspotify ffmpeg
