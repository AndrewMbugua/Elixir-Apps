defmodule LiveViewTodosWeb.TodoLive do
use LiveViewTodosWeb, :live_view
alias LiveViewTodos.Todos
def mount(_params, _session, socket)do
  #Subscribing to the topic
  Todos.subscribe()

{:ok, fetch(socket)}
end

def handle_event("add", %{"todo" => todo}, socket) do
Todos.create_todo(todo)

{:noreply, fetch(socket)}
end

def handle_event("toggle_done", %{"id" => id},socket) do
todo = Todos.get_todo!(id)
Todos.update_todo(todo, %{done: !todo.done})
{:noreply,(socket)}
end





#Handling any events that come in
def handle_info({Todos, [:todo | _ ], _ }, socket)do
{:noreply, fetch(socket)} #function called by pubsub but send a noreply
end

#Create a new handle event function,that watches for an add event
defp fetch(socket) do
  assign(socket, todos: Todos.list_todos())
end
end
