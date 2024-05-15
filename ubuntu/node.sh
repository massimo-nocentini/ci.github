
wget https://nodejs.org/dist/v22.1.0/node-v22.1.0.tar.gz
tar xfz node-v22.1.0.tar.gz
cd node-v22.1.0
./configure --shared
make -j16
sudo make install
cd ..

mkdir node-dist
cd node-dist
mkdir include
cp -r /usr/local/include/node/ include/
mkdir lib
cp /usr/local/lib/libnode.so.127 lib/libnode.so
cp -r /usr/local/lib/node_modules/ lib/
mkdir bin
cp /usr/local/bin/node bin/
cp /usr/local/lib/node_modules/corepack/dist/corepack.js bin/corepack
cp /usr/local/lib/node_modules/npm/bin/npm-cli.js bin/npm
cp /usr/local/lib/node_modules/npm/bin/npx-cli.js bin/npx
mkdir share
mkdir -p share/doc/node
cp /usr/local/share/doc/node/gdbinit share/doc/node/ 
cp /usr/local/share/doc/node/lldb_commands.py share/doc/node/
mkdir -p share/man/man1
cp /usr/local/share/man/man1/node.1 share/man/man1/
zip -r node-v22.1.0.zip *
cd ..
