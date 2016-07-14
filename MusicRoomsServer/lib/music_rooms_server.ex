defmodule MusicRoomsServer do
  use Application

  def start(_type, _args) do
    MusicRoomsServer.Supervisor.start_link
  end

end