defmodule MultiLangWeb.PageController do
  use MultiLangWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
