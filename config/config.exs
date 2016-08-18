# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :trol_fenix,
  ecto_repos: [TrolFenix.Repo]

# Configures the endpoint
config :trol_fenix, TrolFenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2+WY/5NBPnLSGfCU3Ri92Cz2Ym88B2rj13yuGtanXfgEemkQhoxPzRMtWVe+SjE5",
  render_errors: [view: TrolFenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TrolFenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
