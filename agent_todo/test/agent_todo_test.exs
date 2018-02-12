defmodule TODOTest do
  use ExUnit.Case, async: true
  doctest TODO

  test "stores new task in the state" do
    TODO.start_link(:todo)
    assert TODO.get(:todo) == []

    TODO.put(:todo, "test")
    assert TODO.get(:todo) == ["test"]

    TODO.delete(:todo, "test")
    assert TODO.get(:todo) == []
  end
end
