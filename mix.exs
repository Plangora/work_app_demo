defmodule WorkApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :work_app,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      #ExDoc
      name: "WorkApp",
      source_url: "https://github.com/Plangora/work_app_demo",
      homepage_url: "https://www.plangora.com",
      docs: [
        main: "WorkApp",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.3.1"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
    ]
  end
end
