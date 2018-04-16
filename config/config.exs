# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# config :gettext, :default_locale, "fa"

# config :multi_lang, MultiLangWeb.Gettext, default_locale: "ru" , locales: ~w(ru en fa)

# Configures the endpoint
config :multi_lang, MultiLangWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "saaBUuAs9kkbpI4MJeMNMtQsGnouLj69Gjo5xNQtTs3l3LYE8U4zbiP5/eJ3q6Zg",
  render_errors: [view: MultiLangWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MultiLang.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]



config :multi_lang, MultiLangWeb.Gettext,
    default_locale: "fa"

config :gettext, :default_locale, "fa"


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
