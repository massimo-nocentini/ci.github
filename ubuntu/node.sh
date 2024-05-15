


wget https://github.com/nodejs/node/archive/refs/tags/v22.1.0.tar.gz --no-verbose
tar xfz v22.1.0.tar.gz

cd node-22.1.0
./configure --shared
make -j16
sudo make install
cd ..

mkdir node-dist
cd node-dist
mkdir include
cp -r /usr/local/include/node/ include/
mkdir lib
cp /usr/local/lib/libnode.so.127 lib/
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
zip -r ubuntu-node-v22.1.0.zip *
cd ..
