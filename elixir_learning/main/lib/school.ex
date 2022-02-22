defmodule School do

  def is_palindrome(s) do
    
    reverse = String.reverse(s)
    if reverse == is_palindrome(s) do
    true

    else
    
    false
    end


end
end
