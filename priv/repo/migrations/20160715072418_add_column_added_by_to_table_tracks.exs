defmodule MusicRoomsServer.Repo.Migrations.AddColumnAddedByToTableTracks do
  use Ecto.Migration

  def change do
    alter table (:tracks) do
      add :addedBy, :string
    end
  end
end
