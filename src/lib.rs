#![no_std]
use core::panic::PanicInfo;

mod arduino;
use arduino::{delay, micros, serial_phex};

#[panic_handler]
#[no_mangle]
pub extern "C" fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

#[no_mangle]
pub extern "C" fn main_setup() -> () {}

#[no_mangle]
pub extern "C" fn main_loop() -> () {
    unsafe {
        let start = micros();
        delay(500);
        let elapsed = micros() - start;
        serial_phex(elapsed);
    }
}
