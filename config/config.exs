# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :call_rtc,
  ecto_repos: [CallRtc.Repo]

# Configures the endpoint
config :call_rtc, CallRtcWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OtszVotYU+X6OoK816iO++Ju6COECZApkygrgSXuFexzLvsC7La8JbvisRS6emIW",
  render_errors: [view: CallRtcWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CallRtc.PubSub,
  live_view: [signing_salt: "N6c6yUoZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
