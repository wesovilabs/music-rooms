defmodule MusicRoomsServer.Repo.Migrations.AddColumnTrackUriToTableTracks do
  use Ecto.Migration

  def change do
    alter table (:tracks) do
      add :trackUri, :string
    end
  end
end
