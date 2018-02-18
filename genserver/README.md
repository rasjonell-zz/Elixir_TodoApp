# TODO with Elixir GenServers

Clone the repo and in the cloned directory type:

```
mix compile
```

Then ```iex -S mix```



## Available Functions


To initiate TODO process type:

```elixir
iex> start_link

{:ok, #PID<0.92.0>} # The #PID may differ
```

Currently available functions are: ```put/1```, ```delete/1```, ```get/0```

## put/1

Requires one argument: ```put(task)```

```elixir
iex> TODO.put("Learn Elixir")

:ok
```

```elixir
iex> put("Learn Erlang")

:ok
```

## delete/1

Requires one argument: ```delete(task)```

```elixir
iex(5)> delete("Learn Erlang")

:ok
```

## get/0

Doesn't require an argument: ```get()```

```elixir
iex> get()

> ["Learn Elixir"]
```