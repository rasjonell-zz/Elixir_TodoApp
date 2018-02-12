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

All functions require an atom ```:name``` as the first argument.

To give a name to TODO Agent type:

```
iex(2)> start_link(:todo) # :todo can be replaced with any atom.

> {:ok, #PID<0.92.0>} # The #PID may differ
```

Currently available functions are: ```put/2```, ```delete/2```, ```get/1```

## put/2

Requires two arguments: ```put(:name, task)```

```
iex(3)> put(:todo, "Learn Elixir")

> :ok
```

```
iex(4)> put(:todo, "Learn Erlang")

> :ok
```

## delete/2

Requires two arguments: ```delete(:name, task)```

```
iex(5)> delete(:todo, "Learn Erlang")

> :ok
```

## get/1

Requires one argument: ```get(:name)```

```
iex(6)> get(:todo)

> ["Learn Elixir"]
```