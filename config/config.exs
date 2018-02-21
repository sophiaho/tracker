# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tracker,
  ecto_repos: [Tracker.Repo]

# Configures the endpoint
config :tracker, TrackerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "y/rjWZi34ay3eU2bwSdyQOWSyuSXicK57nMQgUlPURUMDWknkDPD0cEoeOCN1I79",
  render_errors: [view: TrackerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tracker.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
