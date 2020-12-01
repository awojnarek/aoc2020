
-- Input the file into a table
local file = io.open("input.txt", "r");
local arr = {}
for line in file:lines() do
   table.insert (arr, line);
end

---------------
-- Functions --
---------------

function summed2020(x,y)
    if x + y == 2020 then
        return true
    end
    return false
end

for i, x in pairs(arr) do
    x = tonumber(x)

    for i, y in pairs(arr) do
        y = tonumber(y)
        if summed2020(x,y) == true then
            print("The answer is: "..x*y)
            os.exit()
        end
    end
end
