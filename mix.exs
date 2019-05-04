defmodule OpencensusAbsinthe.MixProject do
  use Mix.Project

  @description "Integration between OpenCensus and Absinthe"

  def project do
    [
      app: :opencensus_absinthe,
      deps: deps(),
      description: @description,
      docs: docs(),
      elixir: "~> 1.8",
      package: package(),
      preferred_cli_env: [coveralls: :test],
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      version: "0.1.0"
    ]
  end

  def application() do
    [
      extra_applications: [:logger]
    ]
  end

  defp package() do
    [
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/amplifiedai/opencensus_absinthe",
        "OpenCensus" => "https://opencensus.io",
        "OpenCensus Erlang" => "https://github.com/census-instrumentation/opencensus-erlang",
        "OpenCensus BEAM" => "https://github.com/opencensus-beam"
      }
    ]
  end

  defp deps() do
    [
      {:absinthe_plug, "~> 1.4.0", only: :dev, runtime: false},
      {:absinthe, "~> 1.4.0"},
      {:credo, "~> 0.10.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0-rc.6", only: :dev, runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10.6", only: [:dev, :test], runtime: false},
      {:licensir, "~> 0.4.0", only: :dev, runtime: false},
      {:mix_test_watch, "~> 0.8", only: :dev, runtime: false},
      {:opencensus, "~> 0.9.2"}
    ]
  end

  defp docs() do
    [
      main: "Opencensus.Absinthe",
      extras: [],
      deps: [
        opencensus: "https://hexdocs.pm/opencensus/"
      ]
    ]
  end
end