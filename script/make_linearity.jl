# code to generate script text file to use in ESP301 GUI

# file creationg
file_name = "linearity_by_julia.txt"
touch(file_name)
file = open(file_name, "w")

# position limits 
pos_lim = 90
time_lim = 5

# angular velocities are in deg/s
first_vel = 1
last_vel = 40
step_vel = 0.5
delay_between_vel = 1000

angular_vel = first_vel:step_vel:last_vel


# start programming
write(file, "1xx\n1ep\n")

# send home
write(file, "1mo; 1ac80; 1va40; 1pr-45; wt3000\n")

trajectory = zeros(size(angular_vel,1)*3) # neg, pos, delay
time = zeros(size(angular_vel,1)*3)
count = 1
for speed in angular_vel

    pos = time_lim * speed
    if pos  >= pos_lim
        pos = pos_lim
    end

    command = "1va$speed; 1pr+$pos; 1ws; 1pr-$pos; 1ws$delay_between_vel\n"
    write(file, command)

    # Creating a mock signal of the trajectory.
    # since this is not a very large array, 
    # I'm concatenating it as it grows.
    trajectory[count] = -speed
    trajectory[count+1] = +speed
    trajectory[count+2] = 0
    time[count] = pos/speed
    time[count+1] = pos/speed
    time[count+2] = delay_between_vel*1e-3
    count = count + 3 

end

# stop programming
write(file,  "1ac80; 1va40; 1pr45; wt3000\n")
write(file, "qp\n1ex\n")

close(file)

# saving time by angular velocities
time_index = cumsum(time)
using DelimitedFiles
writedlm("measurement_representation.csv", hcat(time_index, trajectory), ',')
