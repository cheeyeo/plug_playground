defmodule HelloPlug do
  import Plug.Conn

  def init(options) do
    # initialize options
    options
  end

  def call(conn,_opts) do
    conn
      |> put_resp_content_type("text/plain")
      |> send_resp(200, "Hello world")
  end
end


# Run it in standalone mode with the two lines added:
# {:ok, _} = Plug.Adapters.Cowboy.http HelloPlug, []
# IO.puts "Running MyPlug with Cowboy on http://localhost:4000"

# and the following mix command:

# mix run --no-halt lib/hello_plug.ex


