function parallel_sum(arr)
    sum = 0 # non atomic = race cond when JULIA_NUM_THREADS!=1 
    Threads.@threads for i in 1:length(arr)
        sum += arr[i]
    end
    return sum[]
end

# Example usage
arr = ones(1_000_000_00)  # An array of ones
println(println(Threads.nthreads())) # can be set with env `JULIA_NUM_THREADS=2`
println(parallel_sum(arr))  # Output will be 1_000_000
