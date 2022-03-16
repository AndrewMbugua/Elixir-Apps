# with JSON responses we write the render functions in the view directly instead of writing a template
defmodule FirehoseWeb.RoleView do
use FirehoseWeb, :view

def render("index.json", %{roll: num}) when is_integer(num) do
  %{status: "Ok", roll: num}
end

def render("index.json",_)

end
