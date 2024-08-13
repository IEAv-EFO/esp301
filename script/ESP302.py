# -*- coding: utf-8 -*-
"""
Created on Thu Sep 15 14:44:10 2022

@author: Nicolas Faure
https://github.com/NFaure-Lahc/ESP302
"""

import socket    # used for TCP/IP communication 
 
# Prepare 3-byte control message for transmission
TCP_IP = '192.168.254.254'
TCP_PORT = 5002

BUFFER_SIZE = 80

class ESP302():
    
    def __init__(self):
        self.s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.s.connect((TCP_IP, TCP_PORT))
    
    def close(self):
        self.s.close()
    
    def sendMessage(self, message):
        self.s.send(message.encode())
        return self.s.recv(BUFFER_SIZE).decode().strip().split(",")[1]
        
    def getPosition(self, motor):
        return self.sendMessage(f"{motor}TP?")

    def moveRelative(self, motor, pas):
        self.sendMessage(f"{motor}PR{pas}")
    
    def moveAbsolute(self, motor, pos):
        self.sendMessage(f"{motor}PA{pos}")
    
    def getMaxVelocity(self, motor):
        return self.sendMessage(f"{motor}VU?")
    
    def getVelocity(self, motor):
        return self.sendMessage(f"{motor}VA?")
    
    def setVelocity(self, motor, velocity):
        self.sendMessage(f"{motor}VA{velocity}")

    def stopMotor(self, motor):
        self.sendMessage(f"{motor}ST")
    
    def motor_on(self, motor):
        self.sendMessage(f"{motor}MO")

    def define_software_limit(self, motor, limit=0):
        self.sendMessage(f"{motor}ZS0{limit}")

    def isMoving(self, motor):
        pass
        
        
def main():
    test = ESP302()
    
    test.getPosition(1)
    
    test.getVelocity(1)

    test.setVelocity(1,40)
    
    test.getMaxVelocity(1)
    test.close()

if __name__ == "__main__":
    main()