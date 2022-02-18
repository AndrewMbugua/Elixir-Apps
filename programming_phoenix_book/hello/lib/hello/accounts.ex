defmodule Hello.Accounts do
alias Hello.Accounts.User
  def list do

    [
      %User{id: "1", name: "José", username: "josevalim"},
      %User{id: "2", name: "Bruce", username: "redrapids"}
    ]

  end

end
