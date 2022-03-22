defmodule Tracker.Accounts do
  # Accounts context - Groups together related functions
alias Tracker.Accounts.Students
alias Tracker.Repo

# Submits student's data to the database
def add_student_data(attrs \\ %{}) do

  %Students{}
  |> Students.changeset(attrs)
  |> Repo.insert()

end

# Retrieves student data from the database
def retrieve_student_data()do

end


end
