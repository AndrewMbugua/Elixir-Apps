defmodule Firehose.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Firehose.Repo,
      # Start the Telemetry supervisor
      FirehoseWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Firehose.PubSub},
      # Start the Endpoint (http/https)
      FirehoseWeb.Endpoint
      # Start a worker by calling: Firehose.Worker.start_link(arg)
      # {Firehose.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Firehose.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    FirehoseWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
