defmodule GuessingGame do

  # returns midpoint

  def guess(low,high) do

 IO.puts (low)
 IO.puts (high)
  end

  def mid(low,high) do
    div(low + high, 2)

  end

    @spec bigger(integer, integer) :: :ok
    def bigger(low,high)do

      # min finds the smallest of 2 numbers
      new_low = min high,mid(low,high) + 1

      guess(new_low, high)
    end

    @spec smaller(integer, integer) :: :ok
    def smaller(low,high)do

      new_high = min high,mid(low,high) + 1

      guess(low, new_high)

    end

  end
