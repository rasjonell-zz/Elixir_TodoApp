# TODO with Elixir Processes

**TODO: Add GenServer Version**

Clone the repo and in the cloned directory type:

```
mix compile
```

Then ```iex -S mix```


Then to access all the function from TODO module type:

```
iex(1)> import TODO, only: :functions

> TODO
```

## Available commands

All functions require ```pid``` as the first argument.

To get the PID of the TODO Agent type:

```
iex(2)> {:ok, pid} = start_link([])

> {:ok, #PID<0.92.0>} # The #PID may differ
```

Currently available functions are: ```put/2```, ```delete/2```, ```get/1```

## put/2

Requires two arguments: ```put(pid, task)```

```
iex(3)> put(pid, "Learn Elixir")

> :ok
```

```
iex(4)> put(pid, "Learn Erlang")

> :ok
```

## delete/2

Requires two arguments: ```delete(pid, task)```

```
iex(5)> delete(pid, "Learn Erlang")

> :ok
```

## get/1

Requires one argument: ```get(pid)```

```
iex(6)> get(pid)

> ["Learn Elixir"]
```