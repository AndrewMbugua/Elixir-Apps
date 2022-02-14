# exs are files meant for scripting 
# ex are meant to be compiled
# String.trim gets rid of the white spaces

filename = IO.gets("File to count the words from:") |> String.trim()

file_body = File.read!(filename)
IO.inspect (file_body)
