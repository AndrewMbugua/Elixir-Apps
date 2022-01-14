defmodule Counter do

#list ["cow", "goat", "sheep"]
#Method 1
def counter do
list = ["cow", "goat", "sheep"]

Enum.map(list, &String.length/1)
end

#Using graphemes
def grapheme do
list = ["cow", "goat", "sheep"]

Enum.map(list, &String.graphemes/1)
end


#Method 2 - Provide the list elements through a function
def counter1(list1) do

Enum.map(list1, &String.length/1)
end

end
