defmodule FirehoseWeb.RollController do
  use FirehoseWeb, :controller

  def index(conn,_params) do
    num = :rand.uniform(6)
  end




end
