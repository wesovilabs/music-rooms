defmodule MusicRoomsServer.TrackRouter do
  use Maru.Router

  helpers do
    alias MusicRoomsServer.Track, warn: false
    alias MusicRoomsServer.Repo, warn: false
    import Ecto.Query, warn: false
  end

  namespace :track do



      get do
         query = from track in Track,
                 select: track
        tracks = query |> Repo.all
        json conn, tracks
      end

      desc "Get full list of tracks"



  end
end