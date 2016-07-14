defmodule MusicRoomsServer.Track do
  use Ecto.Model

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "tracks" do
    field :title
    field :singer
    field :addedBy
  end


end
