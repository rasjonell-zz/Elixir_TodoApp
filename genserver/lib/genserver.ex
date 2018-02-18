defmodule TODO do
  @moduledoc """
  **TODO: add documentation**
  """

  use GenServer

  @name TODO

  
  ## Client API

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, [name: TODO] ++ opts)
  end

  def get() do
    GenServer.call(@name, :get)
  end

  def put(task) do
    GenServer.cast(@name, {:put, task})
  end

  def delete(task) do
    GenServer.cast(@name, {:delete, task})
  end


  ## Server Callbacks
  
  def init(_args) do
    {:ok, []}
  end

  def handle_call(:get, _from, list) do
    {:reply, list, list}
  end


  def handle_cast({:put, task}, list) do
    # **TODO: Update state only if task is not there**

    {:noreply, [task | list]}
  end

  def handle_cast({:delete, task}, list) do
    {:noreply, List.delete(list, task)}
  end
end
