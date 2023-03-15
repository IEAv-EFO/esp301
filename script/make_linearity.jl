# code to generate script text file to use in ESP301 GUI

# position limits 
pos_lim = 45
time_lim = 5

# angular velocities are in deg/s
first_vel = 5
last_vel = 40
step_vel = 5

angular_vel = first_vel:step_vel:last_vel

for speed in angular_vel

    
    println("1va$speed; 1pa+$pos; 1ws; 1pa-$pos; 1ws500")
end