defmodule Blogger do

def fetch_blog do
HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")

end

def capitalize do
String.upcase("cow goat sheep")
end

def cap(input) do

end
end
