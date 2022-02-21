defmodule Action do
# Contains Elixir school code

def practise do
# using with operator
  user = %{:first => "Sean", :last => "Callan"}

with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last),
      do: last <> " , "<> first




end
end
