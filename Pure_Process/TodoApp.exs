defmodule TodoApp do
    import Todo, only: :functions

    def init() do
        start_link()
    end

    def get_items(process) do
        send process, {:get, self()}
        handle_updates()
    end

    def add_item(task, process) do
        send process, {:put, task}
        IO.puts "====================="
        get_items(process)
    end

    def delete_item(task, process) do
        send process, {:delete, task}
        IO.puts "====================="
        get_items(process)
    end

    defp handle_updates do
        receive do
            list -> IO.puts list
        end
    end

end
