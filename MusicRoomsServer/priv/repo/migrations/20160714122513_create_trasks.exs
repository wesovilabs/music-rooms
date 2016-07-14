defmodule MusicRoomsServer.Repo.Migrations.CreateTrasks do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :title,   :string
      add :singer, :string
      add :addedBy, :string

      timestamps
    end
  end
end
