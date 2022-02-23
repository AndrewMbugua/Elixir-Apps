defmodule Rumbl.Accounts do
# Accounts context - Groups together related functions
# Now we change our accounts context to an Ecto instance

alias Rumbl.Accounts.User

# mapping to the struct
# we start by hardcoding,then later map to a db
def list_users do
[

   %User{:id => "1", :name => "Jose", :username => "JoseValim"},
   %User{:id => "2", :name => "Andrew", :username => "Andy"},
   %User{:id => "3", :name => "Johnny", :username => "John"}
]
end

def get_user(id)do
  #Enum.find returns 1st element which is true
  Enum.find(list_users(),fn map -> map.id == id end)
end

def get_user_by(params) do
  Enum.find(list_users(), fn map ->
                           Enum.all?(params, fn {key,val} -> Map.get(map, key) == val end)end)
end



end
