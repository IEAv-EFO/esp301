from script.ESP302 import ESP302
from time import sleep

inst = ESP302()

inst.setVelocity(1, 80)
inst.setVelocity(2, 40)
inst.define_software_limit(1)
inst.define_software_limit(2)


# inst.moveRelative(1,110_000)
# inst.moveRelative(2,110_000)

# inst.moveAbsolute(1,0)
# inst.moveAbsolute(1,0)
# inst.moveAbsolute(2,0)

inst.motor_on(1)
inst.motor_on(2)

# oscillating and getting positions
delay = 10
for i in range(1,1000):
    inst.stopMotor(1)
    inst.stopMotor(2)

    sleep(0.2)
    inst.moveRelative(1,10000)
    inst.moveRelative(2,10000)

    for i in range(1,20):
        pos_1 = inst.getPosition(1)
        pos_2 = inst.getPosition(2)
        print(f"Position Motor 1: {pos_1}          Motor 2: {pos_2}")
        sleep(0.5)

    sleep(0.2)
    # sleep(delay)

    inst.stopMotor(1)
    inst.stopMotor(2)
    sleep(0.2)
    inst.moveRelative(1,-10000)
    inst.moveRelative(2,-10000)

    for i in range(1,20):
        pos_1 = inst.getPosition(1)
        pos_2 = inst.getPosition(2)
        print(f"Position Motor 1: {pos_1}          Motor 2: {pos_2}")
        sleep(0.5)

    # sleep(delay)

while (True):
    pos_1 = inst.getPosition(1)
    pos_2 = inst.getPosition(2)
    print(f"Position Motor 1: {pos_1}          Motor 2: {pos_2}")
    sleep(0.2)