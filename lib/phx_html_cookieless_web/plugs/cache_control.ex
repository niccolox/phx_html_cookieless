defmodule PhxHtmlCookielessWeb.Plug.CacheControl do
  @moduledoc """
  Manages the adding of cache-control headers to public requests so CDN
  can do some caching
  """
  import Plug.Conn

  def init(opts), do: opts

  def call(conn = %{assigns: %{current_user: user}}, _opts) when not is_nil(user), do: conn

  # https://developers.cloudflare.com/cache/about/cache-control/
  # Cache assets with revalidation, but allow stale responses if origin server is unreachable
  # https://developer.fastly.com/learning/concepts/cache-freshness/#surrogate-control
  def call(conn, _opts) do
    conn
    |> put_resp_header("cache-control", "max-age=3600, stale-while-revalidate=60, stale-if-error=604800")
    |> put_resp_header(
         "surrogate-control",
         "max-age=3600, stale-while-revalidate=60, stale-if-error=604800"
       )
  end
end