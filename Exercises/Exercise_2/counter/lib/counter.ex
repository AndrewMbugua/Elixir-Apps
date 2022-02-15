defmodule Counter do

#list ["cow", "goat", "sheep"]

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
