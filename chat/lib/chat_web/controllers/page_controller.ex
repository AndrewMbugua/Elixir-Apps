defmodule ChatWeb.PageController do
  use ChatWeb, :controller
require Logger

  def index(conn, _params) do
    render(conn, "index.html")
  end

@impl true
def handle_event("random-room", _params,socket)do
  Logger.info("Click!")
{:noreply,socket}

end
end
