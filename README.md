PlugExercise
==============

Exercise on learning and using [Plugs in Elixir](https://github.com/elixir-lang/plug).


## Running

```elixir
mix deps.get
mix compile

mix test
```

## Types of plugs:

* All plugs must define two methods: init and call

* Function plugs:

  Methods declared within module which takes a Plug.Conn and optional options
  and do some transformation.

* Module Plugs:

  Standalone module which can be used by specifiying a plug command

  ```elixir
  plug MyPlug
  ```

* Plugs are chainable:

``elixir
plug :one
plug :two
plug :three


def one(conn,_opts) do
  # transformation
end

def two(conn,_opts) do
  # transformation
end

def three(conn,_opts) do
  # return final data and transformation
end
```
