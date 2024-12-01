#!/usr/bin/env lua
--[[Advent of Code 2024 day 1 part 2
Author(s)		: Lukas Mirow
Date of creation	: 2024-12-01
]]


require "read_input"


--Iterates over `left_list` and calculates similarities scores accordning to the assignment
function calc_similarity_score(left_list, right_list)
	similarity_score = 0
	for _, left_num in ipairs(left_list)
	do
		occurences = 0
		for _, right_num in ipairs(right_list)
		do
			if left_num == right_num
			then
				occurences = occurences + 1
			end
		end
		similarity_score = similarity_score + left_num*occurences
		print("Number " .. tostring(left_num) .. " was found in `right_list` " .. tostring(occurences) .. " times, adding " .. tostring(left_num * occurences) .. " to `similarity_score`, which is now " .. tostring(similarity_score))
	end
	return similarity_score
end


local left_list, right_list = read_input("input.txt")
print(calc_similarity_score(left_list, right_list))
