defmodule Etcdv3.MixProject do
  use Mix.Project

  def project do
    [
      app: :etcdv3,
      version: "3.4.12",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:grpc, github: "elixir-grpc/grpc"},
      {:cowlib, "~> 2.9.0", override: true},
      {:gun, "~> 2.0.0", hex: :grpc_gun}
    ]
  end
end
