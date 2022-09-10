defmodule PhxHtmlCookielessWeb.CookielessPageController do
  use PhxHtmlCookielessWeb, :controller
  plug :put_layout, "cookielessapp.html"

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
