#!/usr/bin/env lua
--[[Code to read 2 lists of numbers from a text file
Author(s)		: Lukas Mirow
Date of creation	: 2024-12-01
]]


--Reads lines from input file and parses both lists
function read_input(fname)
	local left_list = {}
	local right_list = {}
	for line in io.lines(fname)
	do
		for left_num, right_num in string.gmatch(line, "(%d+)%s+(%d+)")
		do
			table.insert(left_list, left_num)
			table.insert(right_list, right_num)
		end
	end
	return left_list, right_list
end
