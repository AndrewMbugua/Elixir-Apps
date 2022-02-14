defmodule HelloWeb.PageController do
  use HelloWeb, :controller

#world contoller
def world(conn, _params) do
render(conn, "world.html")
end

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
