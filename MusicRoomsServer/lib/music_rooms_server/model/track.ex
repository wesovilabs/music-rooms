defmodule MusicRoomsServer.Track do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "tracks" do
    field :title
    field :singer
    field :addedBy

    timestamps
  end


end
