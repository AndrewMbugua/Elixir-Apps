# New user controller
defmodule TrackerWeb.NewController do
use TrackerWeb, :controller

def new(conn, _params) do
  render(conn, "new.html")
end


end
