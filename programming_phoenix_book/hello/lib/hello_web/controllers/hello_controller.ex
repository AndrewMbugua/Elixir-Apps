defmodule HelloWeb.HelloController do
use HelloWeb, :controller  #prepares us to use Phoenix's controller API
alias  Hello.Accounts

def world(conn, _params)do

  users = Accounts.list()
  render(conn, "world.html", users: users)

end

end
