defmodule HelloWeb.HelloController do
use HelloWeb, :controller  #prepares us to use Phoenix's controller API
alias  Hello.Accounts

def world(conn, %{"name" => name})do

  Accounts.list()
  render(conn, "world.html", name: name)

end

end
