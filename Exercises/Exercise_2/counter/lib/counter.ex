defmodule Counter do

#list ["cow", "goat", "sheep"]
#Method 1
def counter do
list = ["cow", "goat", "sheep"]

Enum.map(list, &String.length/1)
end

#Method 2
def counter1(list1) do

Enum.map(list1, &String.length/1)
end

end
