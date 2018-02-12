defmodule TODOTest do
  use ExUnit.Case, async: true
  doctest TODO

  test "stores new task in the state" do
    {:ok, pid} = TODO.start_link([])
    assert TODO.get(pid) == []

    TODO.put(pid, "test")
    assert TODO.get(pid) == ["test"]
  
    TODO.delete(pid, "test")
    assert TODO.get(pid) == []
  end
end
