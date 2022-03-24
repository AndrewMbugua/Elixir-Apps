defmodule Metex.Worker do

  def loop do
    receive do
      {sender_pid, location} ->
        send(sender_pid, {:ok, temperature_of(location)})
        _ ->
          IO.puts "Dont know how to process this messsage"
    end
    loop
  end

  # temperature function
  def temperature_of(location) do
    result = url_for(location)
    |> HTTPoison.get
    |> parse_response

    case result do
      {:ok, temp} -> "#{location}: #{temp} Celcius"
      :error -> "#{location} not found"
    end
  end

  #api_key
  defp apikey do
    "15ed36e53d432f3a1978477461de7d2c"
  end
  #url_for function
  defp url_for(location) do
    location = URI.encode(location)
    "http://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{apikey}"
  end

  #parse_response function
  defp parse_response({:ok, %HTTPoison.Response{body: body, status_code: 200}}) do
      body |> JSON.decode! |> compute_temperature
  end
 defp parse_response(_)do
   :error
 end

 #computer temperature
 defp compute_temperature(json)do
   try do
     temp = (json["main"]["temp"] - 273.15)
    |> Float.round(1)
    {:ok, temp}
   rescue
    _ -> :error
   end
 end



end
