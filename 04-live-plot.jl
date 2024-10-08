using Random
using Plots
using Base.Threads

# Shared buffers for communication
const buffer1 = Channel{Float64}(100)
const buffer2 = Channel{Float64}(100)

# Function to generate random numbers for the first thread
function generate_numbers1()
    while true
        put!(buffer1, rand() * 10)
        sleep(0.1)  # Adjust the sleep time as needed
    end
end

# Function to generate random numbers for the second thread
function generate_numbers2()
    while true
        put!(buffer2, rand() * 10)
        sleep(0.1)  # Adjust the sleep time as needed
    end
end

# Function to plot numbers in real time
function plot_numbers()
    x = Float64[]
    y1 = Float64[]
    y2 = Float64[]
    p = plot(ylim=(0, 10), title="Real-time Plot of Random Numbers", xlabel="x", ylabel="Random Numbers")
    
    plot!(p, x, y1, label="Generator 1", color="red")
    plot!(p, x, y2, label="Generator 2", color="green")
    
    while true
        num1 = take!(buffer1)
        num2 = take!(buffer2)
        push!(x, length(x) + 1)
        push!(y1, num1)
        push!(y2, num2)
        plot!(p, x, y1, label="", color="red")
        plot!(p, x, y2, label="", color="green")
        display(p)
        sleep(0.1)  # Adjust the sleep time as needed
    end
end

# Start the threads
t1 = @spawn generate_numbers1()
t2 = @spawn generate_numbers2()
plot_numbers()