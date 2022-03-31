defmodule PentoWeb.WrongLive do
  use PentoWeb, :live_view

def mount(_params,_session, _socket)
{
  :ok,
  assign(socket, score: 0, message: "Guess a number")

}



end
