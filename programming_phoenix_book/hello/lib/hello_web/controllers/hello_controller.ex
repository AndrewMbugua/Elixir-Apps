defmodule HelloWeb.HelloController do
use HelloWeb, :controller  #prepares us to use Phoenix's controller API

def world(conn, _params) do
render(conn, "world.html")

end
end