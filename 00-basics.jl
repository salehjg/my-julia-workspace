x = 10
y = "Hello, world!"
my_vector = [1, 2, 3, 4]
my_matrix = [1 2; 3 4]
array_of_arrays = [[0, 1], [2, 3], [4, 5]]
my_dict = Dict("name" => "Alice", "age" => 30)

println(x)
println("y is ", y)
println("vec is ", my_vector)
println("matrix is ", my_matrix)
println("matrix is ", my_matrix)
println("array of arrays: ", array_of_arrays)
println("my dict is ", my_dict)

# Indices in Julia are one-based. Also, there are no negative indices. We cannot write array[-1] like in python
my_vec = [1,2,3,4,5,6]
println(my_vec[1])
println(my_vec[6])
println(my_vec[end])
println(my_vec[begin])

# lets do try catch my_vec[0]
try
    println(my_vec[0])
catch e
    println("Error: ", e)
end





# If else conditionals have end keyword to terminate the blocks
function check_number(x)
    if x > 0
        println("$x is positive")
    elseif x < 0
        println("$x is negative")
    else
        println("$x is zero")
    end
end

check_number(5)   # Output: 5 is positive
check_number(-3)  # Output: -3 is negative
check_number(0)   # Output: 0 is zero





# While loops are alike
function countdown(n)
    while n > 0
        println(n)
        n -= 1
    end
    println("Blastoff!")
end

countdown(5)  # Output: 5 4 3 2 1 Blastoff!





# For-each loop 
function print_array(arr)
    for element in arr
        println(element)
    end
end
print_array([1, 2, 3, 4, 5])  # Output: 1 2 3 4 5





# Asc. counter with 0.5 step
function print_range()
    for i in range(0, stop=5, step=0.5)
        println(i)
    end
end
print_range()  # Output: 0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0






