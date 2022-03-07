defmodule Tracker.Repo.Migrations.Students do
  use Ecto.Migration

  def change do
   create table(:students)do
     add :full_name, :string
     add :admission_number, :string
     add :date_of_joining, :utc_datetime

     timestamps()
   end

   create unique_index(:students, [:admission_number])
  end
end
