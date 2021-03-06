defmodule MusicRoomsServer do
 use Application

   def start(_type, _args) do
     import Supervisor.Spec, warn: true
     children = [
       worker(MusicRoomsServer.Repo, []),
       worker(MusicRoomsServer.DbInitializer, [])
     ]
     opts = [strategy: :one_for_one, name: MusicRoomsServer.Supervisor]
     Supervisor.start_link(children, opts)
   end

end