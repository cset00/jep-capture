use Mix.Config

config :capture, Capture.Repo,
  database: "capture_dev",
  hostname: System.get_env("POSTGRES_HOST") || "localhost"
