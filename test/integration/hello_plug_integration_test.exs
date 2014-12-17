defmodule Integration.HelloPlugIntegrationTest do
  use ExUnit.Case

  setup do
    Plug.Adapters.Cowboy.http HelloPlug, []
    :ok
  end

  test "fetching root gets Hello world" do
    body = fetch('/')
    assert body == 'Hello world'
  end

  def fetch(url) do
    { :ok, {{_version, 200, _reason_phrase}, _headers, body } } = :httpc.request('http://localhost:4000/' ++ url )
    body
  end
end
