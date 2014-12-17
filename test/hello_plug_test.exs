defmodule HelloPlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts HelloPlug.init([])

  test "returns hello world" do
    conn = conn(:get, "/")

    # Invoke the plug
    conn = HelloPlug.call(conn, @opts)

    # Test the output
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "Hello world"
  end
end
