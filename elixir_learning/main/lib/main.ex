defmodule Main do

def error_handling_1 do

  try do
    raise "OH NO!"
  rescue
    e in RuntimeError -> IO.puts("An error occured:" <> e.message)

  after
    IO.puts("The End!")
  end
end

def error_handling_2 do
 try do
 for x <- 0..10 do




 end
 end


end



 end
