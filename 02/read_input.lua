#!/usr/bin/env lua
--[[Code to read a matrix of numbers seperated by spaces and newlines
Author(s)		: Lukas Mirow
Date of creation	: 2024-12-02
]]


--Reads lines from input file and parses 
function read_input(fname)
	local matrix = {}
	for line in io.lines(fname)
	do
		cells = {}
		for cell in string.gmatch(line, "(%d+)")
		do
			table.insert(cells, tonumber(cell))
		end
		table.insert(matrix, cells)
	end
	return matrix
end
