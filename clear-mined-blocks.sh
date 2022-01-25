docker compose logs chainweb-stratum-server | grep "solved block" >> nonce-history.txt
sudo truncate -s 0 $(docker inspect --format='{{.LogPath}}' chainweb-stratum-server)
sudo truncate -s 0 $(docker inspect --format='{{.LogPath}}' chainweb-node)