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


#Method 2 - Provide the list through a function
def count(list) do
Enum.map(list, &String.length/1)
end


#Exercise_1 correction
#input: ["cow", "goat", "sheep"]
#Output: ["COW", "GOAT", "SHEEP"]
def capitalize(input) do
Enum.map(input, &String.upcase/1)

end




end
