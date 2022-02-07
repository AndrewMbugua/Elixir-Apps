defmodule GuessingGame do

  def guess(a, b) when a > b, do: guess(b,a)


  def guess(low,high) do

answer = IO.gets("Hmm... maybe youre thinking of #{mid(low, high)}? \n")
case String.trim(answer) do

 "bigger" -> bigger(low , high)
 "smaller" -> smaller(low, high)
 "yes" -> "I knew I could guess your number"
 _ ->
     IO.puts ~s(Type "bigger", "smaller" or "yes")
    guess(low, high)

end


end

  def mid(low,high) do
    div(low + high, 2)

  end

    @spec bigger(integer, integer) :: :ok
    def bigger(low,high)do

      # min finds the smallest of 2 numbers
      new_low = min(high,mid(low,high) + 1)

      guess(new_low, high)
    end

    @spec smaller(integer, integer) :: :ok
    def smaller(low,high)do

      new_high = max(low,mid(low,high) - 1)

      guess(low, new_high)

    end

  end
