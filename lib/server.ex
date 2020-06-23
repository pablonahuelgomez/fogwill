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

  def mind(word, subscribers \\ [], server \\ __MODULE__) do
    GenServer.call(server, {:mind, word, subscribers}, :infinity)
  end

  # Server
  @impl true
  def init(:ok) do
    {:ok, []}
  end

  @impl true
  def handle_call({:mind, word, subscribers}, _from, state) do
    {:reply, Fogwill.mind(word, subscribers), state}
  end
end
