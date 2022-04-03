defmodule PentoWeb.WrongLive do
  use PentoWeb, :live_view

def mount(_params,_session, socket) do
{
  :ok,
  assign(socket, score: 1, message: "Guess a number.")

}
end

def render(assigns) do
~L"""
<h1> Your Score: <%= @score %></h1>
<h2>
<%= @message %>
It's <%= time()
</h2>
<h2>
<%= for n <- 1..10 do %>
<a href="#" phx-click="guess" phx-value-number = "<%= n %>"><%= n %></a>
<% end %>
</h2>

"""
end

def time() do
  DateTime.utc_now
  |> to_string()
end

def handle_event("guess", data = %{"number" => guess}, socket) do
   IO.inspect data
   message = "Your guess: #{guess}, Wrong. Guess again."
   score = socket.assigns.score - 1

  {
   :noreply,
   assign(socket,message: message,score: score)

  }


end







end
