f(x, y) = x + y

function g(x, y)
    x + y + 99
end

x = 10
y = 90

println("f(x, y) is ", f(x, y))
println("g(x, y) is ", g(x, y))

#=
Julia follows a convention called “pass-by-sharing” for function arguments.
- Values are not copied when passed to functions.
- Function arguments act as new variable bindings, so modifications to mutable values (like arrays) within a function are visible to the caller.
- However, reassigning a variable within the function creates a new binding and does not affect the original object passed by the caller.
=#