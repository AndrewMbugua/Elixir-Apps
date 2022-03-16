defmodule Tracker.Accounts.Students do
use Ecto.Schema

import Ecto.Changeset

schema "students" do
  field :full_name, :string
  field :admission_number, :string
  field :date_of_joining, :utc_datetime  #psql has the date datatype
  #dont require password

  timestamps()
end

def changeset(students, params) do
   students
   |> cast(params, [:full_name, :admission_number, :date_of_joining])
   |> validate_required([:full_name, :admission_number, :date_of_joining])
end

def registration_changeset(students, params) do
  students
  |> changeset(params)
  |> cast(params, [:full_name, :admission_number, :date_of_joining])
  |> validate_required([:full_name, :admission_number, :date_of_joining])

end



end
