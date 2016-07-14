defmodule MusicRoomsServer.Repo.Migrations.AddColumnSingerToTracksTable do
  use Ecto.Migration

  def change do
    add_column :tracks, :singer, :string
  end
end
