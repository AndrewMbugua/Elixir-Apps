defmodule LiveViewTodosWeb.TodoLive do
use LiveViewTodosWeb, :live_view
alias LiveViewTodos.Todos
def mount(_params, _session, socket)do
{:ok, fetch(socket)}
end

def handle_event("add", %{"todo" => todo}, socket) do
Todos.create_todo(todo)

{:noreply, fetch(socket)}
end

#Create a new handle event function,that watches for an add event
defp fetch(socket) do
  assign(socket, todos: Todos.list_todos())
end
end
