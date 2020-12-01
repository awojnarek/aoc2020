#!/usr/bin/env ruby
require 'date'

# Variables
epochStart = Time.now.to_f 
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
            epochEnd = Time.now.to_f 
            duration = epochEnd - epochStart
            printf "The answer: #{e * x}. Duration: #{duration} ms\n"
            exit
        end
    end
end
