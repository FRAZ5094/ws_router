defmodule WsRouter.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/ws" do
    conn
    |> WebSockAdapter.upgrade(WsRouter.EchoSocket, %{}, timeout: 60_000)
    |> halt()
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end
end
