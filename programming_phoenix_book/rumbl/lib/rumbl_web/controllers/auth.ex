defmodule RumblWeb.Auth do
  import Plug.Conn

  def init(opts), do: opts

    # checks if a :user_id is stored in the session
    def call(conn, _opts) do
      user_id = get_session(conn, :user_id)
      user = user_id && Rumbl.Accounts.get_user(user_id)
      assign(conn, :current_user, user)
  end



end
