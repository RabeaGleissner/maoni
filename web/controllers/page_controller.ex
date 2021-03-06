defmodule Maoni.PageController do
  use Maoni.Web, :controller

  def index(conn, _params) do
    %{body: body} = HTTPoison.get!("https://mollies.github.io/feed.xml")
    posts = Posts.for(body)
    render conn, "index.html", posts: posts
  end
end
