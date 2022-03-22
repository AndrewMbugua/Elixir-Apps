# New user controller
defmodule TrackerWeb.UserController do
use TrackerWeb, :controller
alias Tracker.Accounts
alias Tracker.Accounts.Students

def new(conn, params) do
  add_student = Accounts.add_student_data(params)
  render(conn, "new.html", add_student: add_student)
end






end
