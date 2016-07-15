defmodule MusicRoomsServer.Mixfile do
  use Mix.Project


  def project do
    [app: :music_rooms_server,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end


  def application do
    [
     applications: [:maru, :logger, :postgrex, :ecto ],
     mod: {MusicRoomsServer,[]}
    ]
  end


  defp deps do
    [
        {:maru, "~> 0.10"},
        {:plug, git: "https://github.com/elixir-lang/plug.git", tag: "v1.1.6", override: true},
        {:postgrex, ">= 0.11.2"},
        {:ecto, "~> 2.0.1"},
        {:cors_plug, "~> 1.1.1"}
    ]

  end
end
