defmodule Rumbl.Accounts do
# Accounts context - Groups together related functions
# Now we change our accounts context to an Ecto instance

alias Rumbl.Accounts.User
alias Rumbl.Repo
# mapping to the struct
# we start by hardcoding,then later map to a db

def get_user(id) do
  Repo.get(User,id)
end

def get_user!(id) do
  Repo.get!(User, id)
end

def get_user_by(params) do
  Repo.get_by(User, params)
end

def list_users do
  Repo.all(User)
end

end
