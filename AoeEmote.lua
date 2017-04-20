-- nil in lua means null
-- lua does garbage collection itself

local function simpleCounter(a, b, c)

	--set default value for a if not passed into the function
	if (not a) then 
		a = 0 
	end

	--set default value for b if not passed into the function
	if(not b) then b = 0; end

	--set default value for c if not passed into the function
	if(not c) then c = 0; end

	--build the return
	local ans = (a * b) + c

	return ans
end

-- (...) is a list
local function unlimitedArgsCounter(...)

	-- first free elements get stored into each value
	local a, b, c, d = ...;

	return (a * b) + c + d
end

local function tableSize( ... )
	
	--the only real datastructure in lua is a table
	local tbl = {...}
	return #tbl
end

local returnSimpleCounterValue = simpleCounter(6, 10, 9)
local returnUnlimitedArgsCounter = unlimitedArgsCounter(6, 10, 9, 1)
local tableSize = tableSize(1, 2, 3, 4, 5, "hello", "world")

print("counter: " .. returnSimpleCounterValue)
print("unlimitedArgsCounter: " .. returnUnlimitedArgsCounter)
print("tableSize: " .. tableSize)