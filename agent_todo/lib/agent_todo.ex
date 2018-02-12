defmodule TODO do
  use Agent

  @moduledoc """
  Documentation for TODO.
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
    Agent.get(pid, &(&1))
  end

  @doc """
  Puts the new `task` in the state
  """
  def put(pid, task) do
    Agent.update(pid, &([task | &1]))
  end

end
