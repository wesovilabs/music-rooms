defmodule MusicRoomsServer.Repo do
  use Ecto.Repo,
  otp_app: :music_rooms_server,
  adapter: Ecto.Adapters.Postgres
end