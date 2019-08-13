cargo xbuild --release --target thumbv7em-none-eabihf

MAINNAME=rust_main_lib
MAINDIR=$HOME/Arduino/libraries/rust-main-lib
SRCDIR=$MAINDIR/src
LIBDIR=$SRCDIR/imxrt1062

#echo MAINNAME $MAINNAME
#echo MAINDIR $MAINDIR
#echo SRCDIR $SRCDIR
#echo LIBDIR $LIBDIR

mkdir -p $LIBDIR
cp target/thumbv7em-none-eabihf/release/lib$MAINNAME.a $LIBDIR/librust-main-lib.a
cp rust-main-lib.h $SRCDIR
cp library.properties $MAINDIR
