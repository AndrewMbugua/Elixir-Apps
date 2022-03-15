defmodule Main.CLI do

def main(args \\ []) do # \\ defines a default value

args
|> parse_args()

end
