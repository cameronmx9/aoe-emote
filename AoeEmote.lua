-- nil in lua means null
-- lua does garbage collection itself

local function counter(a, b, c)

	if (not a) then 
		a = 0 
	end

	if(not b) then b = 0; end
	if(not c) then c = 0; end


	local ans = (a * b) + c

	return ans
end

local returnValue = counter(6, 10, 9)

print(returnValue)