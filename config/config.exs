# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :gettext_demo_app, GettextDemoAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4A5aKzEuBEO8nKUSSUFQOgaF6O5qhrPz6DOltiV5DZlHjiFrw4p2nlAFBhEyjRM+",
  render_errors: [view: GettextDemoAppWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GettextDemoApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :gettext_demo_app, GettextDemoAppWeb.Gettext,
  default_locale: "en",
  locales: ~w(en de pl)

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
