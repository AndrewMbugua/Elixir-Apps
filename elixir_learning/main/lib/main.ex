defmodule Main do
#its safer to allow the supervisor to do the job for you

def listen do
  receive do
    {:ok, "Hello"} -> IO.puts("Thread")

  end
listen()
end


 end
