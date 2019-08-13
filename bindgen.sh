# Starting point for Rust Arduino API
cpp \
  -D__IMXRT1062__ \
  -DTEENSYDUINO=147 \
  -DARDUINO=10809 \
  -DF_CPU=600000000 \
  -DUSB_SERIAL \
  -DLAYOUT_US_ENGLISH \
  -I$HOME/arduino-1.8.9/hardware/teensy/avr/cores/teensy4 \
  $HOME/arduino-1.8.9/hardware/teensy/avr/cores/teensy4/Arduino.h > arduino.h
bindgen --no-layout-tests --use-core --output arduino.rs arduino.h
