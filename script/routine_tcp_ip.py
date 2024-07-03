from script.ESP302 import ESP302
from time import sleep

inst = ESP302()

inst.setVelocity(1, 80)
inst.setVelocity(2, 40)


# oscillating and getting positions
delay = 10
for i in range(1,200):
    inst.stopMotor(1)
    inst.stopMotor(2)

    sleep(0.2)
    inst.moveRelative(1,10000)
    inst.moveRelative(2,10000)

    for i in range(1,100):
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

    for i in range(1,100):
        pos_1 = inst.getPosition(1)
        pos_2 = inst.getPosition(2)
        print(f"Position Motor 1: {pos_1}          Motor 2: {pos_2}")
        sleep(0.5)

    # sleep(delay)

