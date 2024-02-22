


### prepare swap file:

# sudo mkdir -p /var/cache/swap
# sudo dd if=/dev/zero of=/var/cache/swap/swapfile.img bs=1024 count=1M
# sudo mkswap /var/cache/swap/swapfile.img
# sudo chmod 0600 /var/cache/swap/swapfile.img

### activation:
sudo swapon /var/cache/swap/swapfile.img


