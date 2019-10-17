use Mix.Config

config :capture, Capture.Repo,
  database: "capture_test",
  hostname: System.get_env("POSTGRES_HOST") || "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  username: "postgres",
  password: "postgres"
