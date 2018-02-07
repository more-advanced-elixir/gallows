defmodule Gallows.Application do
  use Application

  def start(_type, _args) do
    children = [
      Gallows.Web.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Gallows.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
