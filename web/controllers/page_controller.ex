defmodule Feedbacker.PageController do
  use Feedbacker.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
