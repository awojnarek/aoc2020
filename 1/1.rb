#!/usr/bin/env ruby
require 'date'

# Variables
input = IO.readlines("input.txt")

# Functions
def summed2020?(x,y)
    return true if x + y == 2020
    return false
end

#epochStart = DateTime.now.strftime('%Q').to_i
epochStart = Time.now.to_f 
input.each do |e|
    e = e.to_i
    input.each do |x|
        x = x.to_i
        if summed2020?(e,x)
            #epochEnd = DateTime.now.strftime('%Q').to_i
            epochEnd = Time.now.to_f 
            duration = epochEnd - epochStart
            printf "The answer: #{e * x}. Duration: #{duration} ms\n"
            exit
        end
    end
end
