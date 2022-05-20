local function isPrime(n)
	for i = 3, n / 2, 2 do
		if n % i == 0 then
			return false
		end
	end

	return true
end

local prime = 0

local max = tonumber(arg[#arg])

local s = os.clock()

for i = 1, max, 2 do
	if isPrime(i) then
		prime = prime + 1
	end
end

print((os.clock() - s) * 1000)
