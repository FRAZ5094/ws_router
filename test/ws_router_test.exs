defmodule WsRouterTest do
  use ExUnit.Case
  doctest WsRouter

  test "greets the world" do
    assert WsRouter.hello() == :world
  end
end
