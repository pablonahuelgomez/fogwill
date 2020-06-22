defmodule Fogwill.Server do
  @moduledoc """
  """
  use GenServer
  require Logger

  # Client
  def start_link(opts) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def stop(server \\ __MODULE__) do
    GenServer.stop(server)
  end

  def mind(words, server \\ __MODULE__) do
    GenServer.call(server, {:mind, words})
  end

  # Server
  @impl true
  def init(:ok) do
    {:ok, []}
  end

  @impl true
  def handle_call({:mind, words}, _from, state) do
    {:reply, Fogwill.mind(words), state}
  end
end
