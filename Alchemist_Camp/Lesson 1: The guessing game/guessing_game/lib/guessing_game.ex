defmodule GuessingGame do

  # returns midpoint
  def mid(low,high) do
    div(low + high, 2)

  end

    def bigger(low,high)do
      new_low = min high,mid(low,high) + 1 # min finds the smallest of 2 numbers

    end


  end
