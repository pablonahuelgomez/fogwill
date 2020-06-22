defmodule Fogwill.Application do
  @moduledoc """
  Fogwill Application
  """
  use Application

  @impl true
  def start(_type, _args) do
    Fogwill.Supervisor.start_link(name: Fogwill.Supervisor)
  end
end
