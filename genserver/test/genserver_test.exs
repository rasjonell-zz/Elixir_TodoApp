defmodule TODOTest do
  use ExUnit.Case
  doctest TODO

  test "starts todo process, puts/deletes/gets tasks" do
    TODO.start_link
    assert TODO.get == []

    TODO.put("Learn OTP")
    assert TODO.get == ["Learn OTP"]

    TODO.delete("Learn OTP")
    assert TODO.get == []
  end
end
