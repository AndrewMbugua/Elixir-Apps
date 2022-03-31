defmodule PentoWeb.WrongLive do
  use PentoWeb, :live_view

def mount(_params,_session, socket) do
{
  :ok,
  assign(socket, score: 0, message: "Guess a number.")

}
end

def render(assigns) do
~L"""
<h1> Your Score: <%= @score %></h1>
<h2>
<%= @message %>
</h2>
<h2>
<%= for n <- 1..10 do %>
<a href="#" phx-click="guess" phx-value-number = "<%= n %>"><%= n %></a>
<% end %>
</h2>

"""










end











end
