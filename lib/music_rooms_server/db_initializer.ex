defmodule MusicRoomsServer.DbInitializer do
  import Ecto.Query
  alias MusicRoomsServer.Track, as: Track
  alias MusicRoomsServer.Playlist, as: Playlist
  require MusicRoomsServer.Repo

  def _playlists do
    (%Playlist{name: "American idols", link: "http://"})
  end

  def _tracks do
    (%Track{title: "Todos los días sale el sol", singer: "Bongo Botrako", trackUri: "spotify:track:5POVqopleYwfzo5SYovlKK",})
    (%Track{title: "It's a beautiful day", singer: "Michael Bublé", trackUri: "spotify:track:0mvkwaZMP2gAy2ApQLtZRv"})
  end

  def start_link()  do
    IO.puts "hey"

    (_playlists ++ _tracks) |> insert
  end

  #We could make use of insert_all but just wanted to iterate over the list in a functional way
  def insert([track|tracks]) do
    insert(tracks)
  end

  def insert(track) do
    MusicRoomsServer.Repo.insert(track)
  end

  def insert([]) do
    []
  end



end