defmodule GettextDemoAppWeb.PageController do
  use GettextDemoAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
