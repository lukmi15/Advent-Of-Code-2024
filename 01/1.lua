#!/usr/bin/env lua
--[[Advent of Code 2024 day 1 part 1
Author(s)		: Lukas Mirow
Date of creation	: 2024-12-01
]]


require "read_input"


--Sorts lists and checks if theirs lengths match
function prepare_lists(left_list, right_list)
	table.sort(left_list)
	table.sort(right_list)
	if #left_list ~= #right_list
	then
		error("List lengths do not match up (left is has length `" .. tostring(#left_list) .. "` and right list has length `" .. tostring(#right_list) .. "`.")
	end
	return left_list, right_list
end

--Calculates total distances of sorted lists, according to the assignment
function calc_distance(left_list, right_list)
	local total_distance = 0
	for i = 1, #left_list
	do
		total_distance = total_distance + math.abs(left_list[i] - right_list[i])
		print("Distance of " .. tostring(left_list[i]) .. " and " .. tostring(right_list[i]) .. ": " .. tostring(math.abs(left_list[i] - right_list[i])) .. ", total: " .. tostring(total_distance))
	end
	return total_distance
end

local left_list, right_list = read_input("input.txt")
left_list, right_list = prepare_lists(left_list, right_list)
print(calc_distance(left_list, right_list))
