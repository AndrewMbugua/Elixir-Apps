defmodule ProjectManagementExampleWeb.PageController do
  use ProjectManagementExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
