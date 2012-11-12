file ~/uCOS/ports/TQ2440/uCOS

# connect to the J-Link gdb server
target remote localhost:2331

# Set JTAG speed to 1000 kHz
monitor endian little
monitor speed 1000

#monitor reset

monitor reg pc 0x32000000

