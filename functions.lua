-- nil in lua means null
-- lua does garbage collection itself

local function counter(a, b, c)
	local ans = (a * b) + c

	return ans
end

local returnValue = counter(6, 10, 9)

print(returnValue)