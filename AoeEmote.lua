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

-- options table
-- first element as at position #1, not #0 like other languages
local options = {5, 4, 3, 2, 1}

-- selecting out of bounds just returns a nil value
local n = options[1]

--------------------------------------------
-- table is two parts: Array + Hash Table --
--------------------------------------------

-- stored as a key in the hash table
options["size"] = 10

-- example option table
local optionsTable = {
	--array part:
	1, 2, 3, 4, 5,
	
	--hash part:
	["level"] = UnitLevel("player"),
	["xOffset"] = 10,
	["yOffset"] = 10,
	["color"] = {r = 0.5, g = 0.2, b = 0.6, a = 1},
	class = "Warrior",
}

local returnSimpleCounterValue = simpleCounter(6, 10, 9)
local returnUnlimitedArgsCounter = unlimitedArgsCounter(6, 10, 9, 1)
local tableSize = tableSize(1, 2, 3, 4, 5, "hello", "world")

print("counter: " .. returnSimpleCounterValue)
print("unlimitedArgsCounter: " .. returnUnlimitedArgsCounter)
print("tableSize: " .. tableSize)

print("-----")

print("optionsTable Info: \n")
print("My Current Level: " ..  optionsTable["level"])
print("My Class: " .. optionsTable.class)
print("Table Size: " .. #optionsTable)
