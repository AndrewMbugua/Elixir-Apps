defmodule HelloWeb.HelloController do
use HelloWeb, :controller  #prepares us to use Phoenix's controller API

def world(conn, %{"name" => name})do

  render(conn, "world.html",name: name)
  

end

end
