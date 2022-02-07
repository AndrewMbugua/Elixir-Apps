defmodule Action do
# Contains Elixir in action book code

def module_1 do

  #person = ["bob","Andrew","John",10,20]

  person = [ ["Head","pre-pend"] ++ ["bob","Andrew","John",10,20] ]

  IO.puts(Enum.at(person,0))
end

  def concurrency do

    Enum.each(1..5, &async_query.("query #{&1}"))
    :ok
  end


end
