using PyCall

np = pyimport("numpy")

# Example usage
a = np.array([1, 2, 3, 4])
println(a)
println(np.sum(a))

# The indices will still be one-based, no negative indices!
println(a[1:2])
println(a[end])
np.save("/tmp/foo.npy", a)
