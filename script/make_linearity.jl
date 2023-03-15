# code to generate script text file to use in ESP301 GUI

# file creationg
file_name = "linearity_by_julia.txt"
touch(file_name)
file = open(file_name, "w")

# position limits 
pos_lim = 90
time_lim = 5

# angular velocities are in deg/s
first_vel = 15
last_vel = 40
step_vel = 2

angular_vel = first_vel:step_vel:last_vel


# start programming
write(file, "1xx\n1ep\n")

# send home
write(file, "1mo; 1ac80; 1va40; 1pr-45; wt3000\n")

for speed in angular_vel

    pos = time_lim*speed
    if pos  >= pos_lim
        pos = pos_lim
    end

    command = "1va$speed; 1pr+$pos; 1ws; 1pr-$pos; 1ws1000\n"
    write(file, command)
end

# stop programming
write(file,  "1ac80; 1va40; 1pr45; wt3000\n")
write(file, "qp\n1ex\n")

close(file)