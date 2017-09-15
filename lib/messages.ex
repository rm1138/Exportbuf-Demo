defmodule Messages do
  use Protobuf, """
    message Msg {
      reserved 1;
      required string id = 2;
    }
  """
end
