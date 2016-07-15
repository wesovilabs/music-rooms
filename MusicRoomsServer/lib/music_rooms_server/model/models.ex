defmodule MusicRoomsServer.Track do
  use Ecto.Schema
  import Ecto.Query


  schema "tracks" do
    field :title
    field :singer
    field :trackUri
    field :addedBy
    belongs_to :playlist, MusicRoomsServer.Playlist
  end

  def all do
    query = from track in MusicRoomsServer.Track,
    select: (
        %{ trackId: track.id, title: track.title, singer: track.singer, link: track.trackUri}
    )
    query |> MusicRoomsServer.Repo.all
  end

  def bySinger(singer) do
    query = from track in MusicRoomsServer.Track,
        select: (
            %{ trackId: track.id, title: track.title, singer: track.singer, link: track.trackUri}
        ),
        where: track.singer == ^singer
    MusicRoomsServer.Repo.get_by(query,singer)
  end

end


defmodule MusicRoomsServer.Playlist do
  use Ecto.Schema


  schema "playlists" do
    field :name
    field :link
    has_many :tracks, MusicRoomsServer.Track
  end


end