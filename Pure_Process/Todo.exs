defmodule Todo do

 def start_link do
  Task.start_link(fn -> loop([]) end)
 end

 def loop(list) do

  receive do
    {:get, caller} ->
      send caller, list
      loop(list)

    {:put, task} ->
      loop(["#{task}\n" | list])
    
    {:delete, task} ->
      list = List.delete(list, "#{task}\n")
      loop(list)
  end
 
 end
  
end