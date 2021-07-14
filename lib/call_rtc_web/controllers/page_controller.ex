defmodule CallRtcWeb.PageController do
  use CallRtcWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
