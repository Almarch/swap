This is a memo for increasing the swap on a linux device.

### Prepare the SWAP file

```
sudo mkdir -p /var/cache/swap
```

For an extra 1Go (1024 * 1M):
```
sudo dd if=/dev/zero of=/var/cache/swap/swapfile.img bs=1024 count=1M
```

Bake the swap file:

```
sudo mkswap /var/cache/swap/swapfile.img
sudo chmod 0600 /var/cache/swap/swapfile.img
```

It may now be activated with:

```
sudo swapon /var/cache/swap/swapfile.img
```

### aknowledgements


