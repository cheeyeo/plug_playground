defmodule ReversingPlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts ReversingPlug.init([])

  test "returns hello world reversed" do
    # create a test connection
    conn = conn(:get, "/")

    #invoke the plug
    conn = ReversingPlug.call(conn, @opts)

    # test the output

    assert conn.status == 200
    assert conn.state == :sent
    assert conn.resp_body == "dlrow olleH"
  end
end
