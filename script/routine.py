import pyvisa
import time

rm = pyvisa.ResourceManager()
inst = rm.open_resource('ASRL3::INSTR')
inst.baud_rate = 19200

print(inst.query("ve?\r"))
inst.write("1mo\r")
inst.write("1ac80\r")
inst.write("1va40\r")

while(True):
    inst.write("1pr10\r")
    time.sleep(1)
    print("running...")
