use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gw, GW.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Reduce number of rounds
config :bcrypt_elixir, log_rounds: 4

# Configure your database
config :gw, GW.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "gw_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure Guardian secret key
config :gw, GW.Guardian,
  secret_key: "OSMuzr1uWJthItzsyXItnRoM3MLNaZXUwkamEHTwxUBYPPDuQTLPJnMBMiMATRjF"
