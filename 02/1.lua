#!/usr/bin/env lua
--[[Advent of Code 2024 day 2 part 1
Author(s)		: Lukas Mirow
Date of creation	: 2024-12-03
]]


INPUT_FNAME = "input.txt"


require "read_input"


--Checks if a report is safe according to the assignment
function is_report_safe(report)
	local last_level = nil
	local increasing_not_decreasing = nil
	for _, level in ipairs(report)
	do
		if last_level == nil
		then --In case this is the first level
			last_level = level
		else

			--Check for level difference
			local delta_level = math.abs(level - last_level)
			if delta_level < 1 or delta_level > 3
			then
				return false
			end

			--Check for level direction
			if increasing_not_decreasing == nil
			then
				increasing_not_decreasing = level > last_level
			else
				if increasing_not_decreasing and level < last_level
				then
					return false
				end
				if (not increasing_not_decreasing) and level > last_level
				then
					return false
				end
			end

		end
		last_level = level
	end
	return true
end


local reports = read_input(INPUT_FNAME)
local num_safe_reports = 0
for _, report in pairs(reports)
do
	if is_report_safe(report)
	then
		num_safe_reports = num_safe_reports + 1
	end
end
print("Number of safe reports: " .. tostring(num_safe_reports))
