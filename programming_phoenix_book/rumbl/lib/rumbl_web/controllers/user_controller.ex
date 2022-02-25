defmodule RumblWeb.UserController do
use RumblWeb, :controller

alias Rumbl.Accounts
alias Rumbl.Accounts.User

#a new user account for our template
#We use changeset to build a customizable strategy
def new(conn, _params)do
    changeset = Accounts.change_user(%User{})
    render(conn, "new.html", changeset: changeset)
end


def index(conn, _params) do
users = Accounts.list_users()
render(conn, "index.html", users: users)
end

# displays users by id
def show(conn, %{"id" => id}) do
    user = Accounts.get_user(id)
    render(conn, "show.html", user: user)

end

end
