defmodule Main do
#its safer to allow the supervisor to do the job for you
def error_handling_1 do

  try do
    raise "OH NO!"
  rescue
    e in RuntimeError -> IO.puts("An error occured:" <> e.message)

  after
    IO.puts("The End!")
  end
end

def odd_count(n) do

  numbers = 1..n
  Enum.to_list(numbers)
  |> Enum.filter(fn n -> rem(n,2) != 1 end)
  |> Enum.count()

  end


 end
