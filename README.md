# Newport ESP301 motion controller

Files and drivers required to use the equipment.

Requirements: dotnet 3.5

## Routine to make work serial and USB
PL2303 driver version working with windows 11: v3.9.5 (2023)
start esp301 gui via USB
set remote mode
close esp301 gui
connect visa with usb com port or RS232
sent command with `\r` terminator

## Info from Labview driver

This labview driver seems to be official, but the labview we got from Newport website is in folder Labview firmware, which differs a lot from Labview driver. The Labview driver is way more detailed and complete. 

Baudrate: 19200

Data bits: 8 

Stop bits: 1

Parity: None

Flow control: RTS/CTS

Timeout: 5000

Terminator: carriage return constant `\r`

visa flush io buffer

mask 16: xC0

visa set io buffer size

mask 16: x30

size:4096
