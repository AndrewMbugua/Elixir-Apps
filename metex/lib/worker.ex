defmodule Metex.Worker do

  def temperature_of(location) do
    result = url_for(location)
    |> HTTPoison.get
    |> parse_response

    case result do
      {:ok, temp} -> "#{location}: #{temp} Celcius"
      :error -> "#{location} not found"
    end
  end

  defp apikey do
    "15ed36e53d432f3a1978477461de7d2c"
  end

  defp url_for(location) do
    location = URI.encode(location)
    "http://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{apikey}"
  end


  defp parse_response({:ok, %HTTPoison.Response{body: body, status_code: 200}}) do
      body |> JSON.decode! |> computer_temperature
  end
 defp parse_response(_)do
   :error
 end


 defp computer_temperature(json)do
   try do
     temp = (json["main"]["temp"] - 273.15)
    |> Float.round(1)
    {:ok, temp}
   rescue
    _ -> :error
   end
 end



end
