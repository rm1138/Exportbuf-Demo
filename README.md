# Exportbuf Demo

**Demo project show the error when using reserved field in proto file**

## Run

```
mix test
```

## Result

```
  1) test Msg encode and decode (ExportbufDemoTest)
     test/exportbuf_demo_test.exs:5
     <span style="color: red">** (CaseClauseError) no case clause matching: :reserved_numbers</span>
     code: lhs = rhs |> Messages.Msg.encode |> Messages.Msg.decode
     stacktrace:
       (exprotobuf) lib/exprotobuf/encoder.ex:8: anonymous fn/2 in Protobuf.Encoder.encode/2
       (elixir) lib/enum.ex:1811: Enum."-reduce/3-lists^foldl/2-0-"/3
       (exprotobuf) lib/exprotobuf/encoder.ex:7: Protobuf.Encoder.encode/2
       test/exportbuf_demo_test.exs:7: (test)
```

## Protobuf file

```
  message Msg {
    reserved 1;
    required string id = 2;
  }
```
