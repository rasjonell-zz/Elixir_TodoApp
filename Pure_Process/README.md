# Elixir ToDo App

Clone the repo and in the cloned directory type:

```
iex TodoApp.exs
```

Then to access all the function from TodoApp type:

```elixir
iex(1)> import TodoApp, only: :functions

TodoApp
```

## Available commands

All functions in the app require ```pid``` as the last argument.

To get the PID of the Todo process type:

```elixir
iex(2)> {:ok, pid} = init()

{:ok, #PID<0.92.0>} # The #PID may differ
```

Currently available functions are: ```add_item/2```, ```delete_item/2```, 
```get_items/1```

## add_item/2

Requires two arguments: ```add_item(task, pid)```

```elixir
iex(3)> add_item("Learn Elixir", pid)

=====================
Learn Elixir
```

```elixir
iex(4)> add_item("Learn Erlang", pid)

=====================
Learn Elixir
Learn Erlang
```

## delete_item/2

Requires two arguments: ```delete_item(task, pid)```

```elixir
iex(5)> delete_item("Learn Erlang", pid)

=====================
Learn Elixir
```

## get_items/1

Requires one argument: ```get_items(pid)```

```elixir
iex(6)> get_items(pid)

=====================
Learn Elixir
# ...
```
