defmodule Metex do
use GenServer # defines call back needed for GenServer

# client API
def start_link(opts \\ [])do
  GenServer.start_link(__MODULE__, :ok, opts)
end

#Server Callback
def init(:ok) do
  {:ok, %{}}
end

# Helper functions

end
