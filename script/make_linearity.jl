# code to generate script text file to use in ESP301 GUI

# file creationg
file_name = "linearity_by_julia.txt"
touch(file_name)
file = open(file_name, "w")

# position limits 
pos_lim = 45
time_lim = 5

# angular velocities are in deg/s
first_vel = 5
last_vel = 40
step_vel = 5

angular_vel = first_vel:step_vel:last_vel

# send home
send_home = "1ac100; 1va40; 1pa0; 1ws1000\n"
write(file, send_home)

for speed in angular_vel

    pos = time_lim*speed
    if pos  >= pos_lim
        pos = pos_lim
    end

    command = "1va$speed; 1pa+$pos; 1ws; 1pa-$pos; 1ws500\n"
    write(file, command)
end

write(file, send_home)

close(file)