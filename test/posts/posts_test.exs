defmodule PostsTest do
  use ExUnit.Case

  @content File.read!("test/feed.xml")

  test "parses a feed" do
    entries = Posts.for(@content)
    assert length(entries) == 1
  end

  test "posts have a title" do
    [entry] = Posts.for(@content)
    assert entry.title == "Day ninety seven"
  end

  test "posts have a link" do
    [entry] = Posts.for(@content)
    assert entry.link == "https://mollies.github.io//2016/08/22/day-ninety-six.html"
  end
end
