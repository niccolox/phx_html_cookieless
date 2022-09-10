defmodule PhxHtmlCookieless.Repo do
  use Ecto.Repo,
    otp_app: :phx_html_cookieless,
    adapter: Ecto.Adapters.Postgres
end
