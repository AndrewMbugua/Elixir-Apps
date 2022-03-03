defmodule RumblWeb.UserController do
use RumblWeb, :controller

alias Rumbl.Accounts
alias Rumbl.Accounts.User

#a new user account for our template
#We use changeset to build a customizable strategy

def index(conn, _params) do
users = Accounts.list_users()
render(conn, "index.html", users: users)
end

# displays users by id
def show(conn, %{"id" => id}) do
    user = Accounts.get_user(id)
    render(conn, "show.html", user: user)

end

def new(conn, _params)do
    changeset = Accounts.change_registration(%User{}, %{})
    render(conn, "new.html", changeset: changeset)
end

def create(conn, %{"user" => user_params}) do
    case Accounts.register_user(user_params)do
      {:ok, user} ->
    conn
    |> put_flash(:info, "#{user.name} created!") # flashes a notification when correct details are put
    |> redirect(to: Routes.user_path(conn, :index))

    {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
end
end
end
