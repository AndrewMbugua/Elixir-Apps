defmodule Main do

def chunk_by do

list = [ "one", "two", "three", "four", "five" ]
func_length = fn(x) -> String.length(x) end

Enum.chunk_by(list, func_length)

end

def map_every do
list = [1,2,3,4,5,6,7,8]

Enum.map_every(list, 3 , fn(x) -> x + 1000 end)

#1001, 2 ,3 ,1004,5 , 6, 1007 ,8

end

def filter do

Enum.filter([1,2,3,4], fn(x) -> rem(x,2) == 0 end)

end

def reduce do

  #Enum.reduce([1,2,3], 10 , fn(x ,acc) -> x + acc end)

  Enum.reduce(["a","b","c"], fn(x ,acc) -> x <> acc end)

end

 end
