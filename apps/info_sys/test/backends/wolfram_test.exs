defmodule InfoSys.Backend.WolframTest do
  use ExUnit.Case, async: true

  test "makes request, reports result, then terminates" do
    actual = hd InfoSys.compute("1 + 1", [])
    assert actual.text == "2"
  end

  @tag :capture_log
  test "no query results reports an empty list" do
    assert InfoSys.compute("none", [])
  end
end
