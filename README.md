This is a memo to increase the swap on a linux device.

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
sudo chmod 0600 /var/cache/swap/swapfile.img
sudo mkswap /var/cache/swap/swapfile.img
```

It may now be activated with:

```
sudo swapon /var/cache/swap/swapfile.img
```

### aknowledgements

https://askubuntu.com/questions/178712/how-to-increase-swap-space

https://github.com/soedinglab/hh-suite/issues/280

