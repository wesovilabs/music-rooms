defmodule MusicRoomsServer do
 use Application

   def start(_type, _args) do
     import Supervisor.Spec, warn: false

     children = [
       worker(MusicRoomsServer.Repo, [])
     ]

     opts = [strategy: :one_for_one, name: MusicRoomsServer.Supervisor]
     Supervisor.start_link(children, opts)
   end

end