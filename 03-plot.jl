
using Plots

# Define the range for x
x = 0:0.01:2

# Compute sin(x)
y = sin.(x)

# Create the plot
f = plot(x, y, label="sin(x)", title="Plot of sin(x)", xlabel="x", ylabel="sin(x)")
display(f)