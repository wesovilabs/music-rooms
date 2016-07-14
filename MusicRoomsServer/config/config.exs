use Mix.Config

config :maru, MusicRoomsServer.API,
    http: [port: 8880],
    versioning: [
        using: :path
    ]

config :music_rooms_server, ecto_repos: [MusicRoomsServer.Repo]

config :music_rooms_server, MusicRoomsServer.Repo,
      adapter: Ecto.Adapters.Postgres,
      database: "music_rooms_db",
      username: "wesovi",
      password: "wesoviPass",
      hostname: "localhost",
      port: 6001


config :music_rooms_server, base_url: (Mix.env == :dev && "http://localhost:8880/music_rooms_server/" || "http://maru-todo.herokuapp.com/tasks/")