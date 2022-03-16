defmodule Firehose.Repo do
  use Ecto.Repo,
    otp_app: :firehose,
    adapter: Ecto.Adapters.Postgres
end
