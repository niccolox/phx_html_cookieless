defmodule PhxHtmlCookielessWeb.CookielessPageController do
  use PhxHtmlCookielessWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
