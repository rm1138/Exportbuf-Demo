defmodule ExportbufDemoTest do
  use ExUnit.Case
  doctest ExportbufDemo

  test "Msg encode and decode" do
    rhs = Messages.Msg.new(id: "uid")
  lhs = rhs |> Messages.Msg.encode |> Messages.Msg.decode
  assert lhs === rhs
  end
end
