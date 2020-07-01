defmodule Fogwill.Broadcaster do

  def broadcast(words, false), do: words
  def broadcast(words, true) do
    channel = Application.get_env(:fogwill, :pub_sub_channel)
    pub_sub = Application.get_env(:fogwill, :pub_sub_library)

    words
    |> Enum.map(fn word ->
      pub_sub.broadcast(Fogwill.PubSub, channel, {:word, %{word: word}})
      word
    end)
  end

end
