defmodule RumblWeb.UserController do
use RumblWeb, :controller

alias Rumbl.Accounts
alias Rumbl.Accounts.User

#a new user account for our template
#We use changeset to build a customizable strategy
defp authenticate(conn) do
    if conn.assigns.current_user do
        conn
    else
    conn
    |> put_flash(:error, "You must be logged in to access that page")
    |> redirect(to: Routes.page_path(conn, :index))
    |> halt()

    end
end

def index(conn, _params) do
    case authenticate(conn) do
        %Plug.Conn{halted: true} = conn ->
            conn

            conn ->
                users = Accounts.list_users()
                render(conn, "index.html", users: users)
            end
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
