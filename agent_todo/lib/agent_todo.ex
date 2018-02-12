defmodule TODO do
  use Agent

  @moduledoc """
  **TODO: add documention**
  """

  @doc """
  Starts a new state-holding process
  """
  def start_link(_opts) do
    Agent.start_link(fn -> [] end)
  end

  @doc """
  Gets the state
  """
  def get(pid) do
    Agent.get(pid, & &1)
  end

  @doc """
  Puts the new `task` in the state
  """
  def put(pid, task) do
    Agent.update(pid, &[task | &1])
  end

  @doc """
  Deletes specified `task` from the state
  """
  def delete(pid, task) do
    Agent.get_and_update(pid, fn list ->
      {:ok, List.delete(list, task)}
    end)
  end
end
