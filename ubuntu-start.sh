# This script runs before SSH in Ubuntu instances

## Example ##

# Setting the time zone
#sudo timedatectl set-timezone "Asia/Shanghai"

# Install the tools you need to use
#sudo apt update
#sudo apt install -y neofetch


curl https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

sudo apt update

sudo apt install cloudflare-warp

warp-cli register --accept-tos
