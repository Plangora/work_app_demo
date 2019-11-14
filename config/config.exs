import Config

config :work_app, :formatter, WorkApp.WesternFormatter

import_config "#{Mix.env()}.exs"