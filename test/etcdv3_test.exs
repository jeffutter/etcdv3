defmodule Etcdv3Test do
  use ExUnit.Case
  doctest Etcdv3

  test "greets the world" do
    assert Etcdv3.hello() == :world
  end
end
