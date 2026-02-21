defmodule WsRouter.EchoSocket do
  @behaviour WebSock

  @impl true
  def init(_opts), do: {:ok, %{}}

  @impl true
  def handle_in({text, [opcode: :text]}, state) do
    {:push, {:text, text}, state}
  end

  @impl true
  def handle_info(_msg, state), do: {:ok, state}

  @impl true
  def terminate(_reason, _state), do: :ok
end
