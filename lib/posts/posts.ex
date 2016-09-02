defmodule Posts do
  def for(content) do
    {:ok, posts, _} = FeederEx.parse(content)
    posts.entries
  end
end
