defmodule Action do
# Contains Elixir in action book code

def practise do
#~c(Expressed by: #{3 + 0.14159}) 
#"string"  <> " " <>  "concatenation"
#Enum.each(1..3, &IO.puts/1)

end

def control_flow do
# displays only hour,nested tuples
#{_, {hour,_,_}} = :calendar.local_time()
#hour

end

def codewar do

def number([]), do: 0
  def number([{add, sub} | stops]) do
    add - sub + number(stops)
end
end



  end





end
