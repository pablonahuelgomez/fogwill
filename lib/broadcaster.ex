defmodule Fogwill.Broadcaster do

  def broadcast(words, false), do: words
  def broadcast(words, true) do
    channel = Application.get_env(:fogwill, :pub_sub_channel)
    pub_sub = Application.get_env(:fogwill, :pub_sub_library)

    pub_sub.broadcast(Fogwill.PubSub, channel, {:words, words})

    words
  end

end
