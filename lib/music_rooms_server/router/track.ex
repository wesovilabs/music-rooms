defmodule MusicRoomsServer.TrackRouter do
  use Maru.Router

  helpers do
    alias MusicRoomsServer.Repo, warn: false
    alias MusicRoomsServer.Track, warn: false
    import Ecto.Query, warn: false
  end

  namespace :tracks do

    version "v1" do
      get do
        tracks = MusicRoomsServer.Track.all
        json conn, tracks
      end

      post do

      end
    end



  end
end