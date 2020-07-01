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
    pub_sub_library = Application.get_env(:fogwill, :pub_sub_library)

    children = [
      {Fogwill.Server, name: Fogwill.Server},
      {pub_sub_library, name: Fogwill.PubSub}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
