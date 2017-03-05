# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_binaryid_failure,
  ecto_repos: [PhoenixBinaryidFailure.Repo]

# Configures the endpoint
config :phoenix_binaryid_failure, PhoenixBinaryidFailure.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5X8BUUOJ5/hwmfmHlWn5q1aHiVxRQsjdpT3yo7wdWMT9DlqCC+qoppSX31HXsVLy",
  render_errors: [view: PhoenixBinaryidFailure.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixBinaryidFailure.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure phoenix generators
config :phoenix, :generators,
  binary_id: true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
