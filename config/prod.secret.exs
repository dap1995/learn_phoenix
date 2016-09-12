use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :learn_phoenix, LearnPhoenix.Endpoint,
  secret_key_base: "f+hLqtXoqtxv1cSJX9MMYOuNnwRPzdi2343yGx57jdxadPVqs7K2FxRoIDjv4Yt2"

# Configure your database
config :learn_phoenix, LearnPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "learn_phoenix_prod",
  hostname: "ecto_pg",
  pool_size: 20
