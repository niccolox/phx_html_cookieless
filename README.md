# Background

IF you are hosting a website with MANY pages, you want to be able to cache HTML in Varnish or Cloudflare or Fastly. You don't need authentication on landing pages.

More advanced techniques would be to route in the Phoenix app by Cookies. Say if, a user visited the cookieless page with a backend, authenticated user cookie, either the Phoenix default or a cookie from a cart, then the router switches the scope to or controller and personalizes the page.

These kinds of caching issues can save money, speed up the site and generally improve the UX.

Demo repo inspired by conversation on Elixir Forum;
https://elixirforum.com/t/how-to-generate-sessionless-cookie-free-cacheable-html/50167/3

Write-up of some notes;
https://niccolox.folkbot.dev/p/66-cookieless-phoenix-html-browserstatic-pipeline

# PhxHtmlCookieless

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

