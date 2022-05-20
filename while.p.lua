local function isPrime(n)
	local i = 3
	while i < n / 2 do
		if n % i == 0 then
			return false
		end

		i = i + 2
	end

	return true
end

local prime = 0

local max = tonumber(arg[#arg])

local s = os.clock()

local i = 1
while i < max do
	if isPrime(i) then
		prime = prime + 1
	end

	i = i + 2
end

print((os.clock() - s) * 1000)
