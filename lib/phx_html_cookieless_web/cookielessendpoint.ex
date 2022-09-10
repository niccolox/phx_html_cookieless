defmodule PhxHtmlCookielessWeb.CookielessEndpoint do
  use Phoenix.Endpoint, otp_app: :phx_html_cookieless

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
    plug Phoenix.Ecto.CheckRepoStatus, otp_app: :phx_html_cookieless
  end

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.MethodOverride
  plug Plug.Head
  plug PhxHtmlCookielessWeb.Router
end
