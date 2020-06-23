defmodule Fogwill.Supervisor do
  @moduledoc """
  Fogwill Supervisor
  """
  use Supervisor

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  @impl true
  def init(:ok) do
    children = [
      {Fogwill.Server, name: Fogwill.Server},
      {Phoenix.PubSub, name: Fogwill.PubSub}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
