# LiveViewTodos

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Screenshots of the To-do List
###
[pic1]()


###Whenever a new to-do is created or updated Phoenix Pub-Sub sends a message to our Live View process,the handle_info function is called & then fetches the latest to-do's from the database & update the user interface.

###Whenever the same app is opened in different windows & content becomes updated,both browser windows get updated in real time.
[pic2]()


###Including a check box,to verify whether or not it has been checked off
[pic3]()
