export USE_CCACHE=1
export CCACHE_DIR=/home/kaijura/.ccache
prebuilt/linux-x86/ccache/ccache -M 40G
source build/envsetup.sh
lunch htc_vivo-eng
export USE_CCACHE=1
export CCACHE_DIR=/home/kaijura/.ccache
prebuilt/linux-x86/ccache/ccache -M 40G
make -j2 bacon


#build on new linux
# make CC=gcc-4.4 CXX=g++-4.4 lord -j6
