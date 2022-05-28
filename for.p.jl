function is_prime(n::Int)
	for i = 3:2:(n/2)
		if n % i == 0
			return false
		end
	end

	return true
end

const max = parse(Int64, ARGS[1])

time = @elapsed begin
	prime = 0

	for i = 1:2:max
		if is_prime(i)
			global prime += 1
		end
	end
end

println(time * 1000)

