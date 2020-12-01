#!/usr/bin/env ruby

# Variables
input = IO.readlines("input.txt")

# Functions
def summed2020?(x,y)
    return true if x + y == 2020
    return false
end


input.each do |e|
    e = e.to_i
    input.each do |x|
        x = x.to_i
        if summed2020?(e,x)
            printf "The answer: #{e * x}\n"
            exit
        end
    end
end
