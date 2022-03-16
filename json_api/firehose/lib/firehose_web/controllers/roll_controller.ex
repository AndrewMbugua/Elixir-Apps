defmodule FirehoseWeb.RollController do
  use FirehoseWeb, :controller

  def index(conn,_params) do
    num = :rand.uniform(6) #randomly generated n.o from 1..6
    render(conn, "index.json",roll: num)
  end




end
