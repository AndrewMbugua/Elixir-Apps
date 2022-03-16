# with JSON responses we write the render functions in the view directly instead of writing a template
defmodule FirehoseWeb.RoleView do
use FirehoseWeb, :view

def render("index.json", %{roll: num})


end
