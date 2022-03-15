defmodule Main.CLI do

def main(args \\ []) do # \\ defines a default value
args
|> parse_args()
|> response()
|> IO.puts()
end

defp parse_args(args)do
{opts, word, _} =
  args
  |> OptionParser.parse(switches: )






end











end
