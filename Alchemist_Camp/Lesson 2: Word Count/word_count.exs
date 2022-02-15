# exs are files meant for scripting 
# ex are meant to be compiled
# String.trim gets rid of the white spaces
filename = IO.gets("File to count the words from:") |> String.trim()

file_body = String.split(File.read!(filename), ~r{\\n | [^\w']+})
|> Enum.filter(fn x -> x != "" end)# matches everything except a word character

IO.inspect(file_body)

file_body |> Enum.count() |> IO.puts
  