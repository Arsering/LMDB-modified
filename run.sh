
cd build

rm -rf ./*
cmake ..
make

cd ..
./bin/lmdb_test