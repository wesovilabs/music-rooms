defmodule MusicRoomsServer.API do
  use Maru.Router


  before do
    plug Plug.Logger
    plug CORSPlug
    plug Plug.Static, at: "/static", from: "/my/static/path/"
    plug Plug.Parsers,
        pass: ["*/*"],
        json_decoder: Poison,
        parsers: [:urlencoded, :json, :multipart]
  end

  mount MusicRoomsServer.UserRouter
  mount MusicRoomsServer.TrackRouter

  rescue_from Unauthorized, as: e do
      IO.inspect e
      conn
      |> put_status(401)
      |> text("Unauthorized")
  end

  rescue_from NotFound, as: e do
      IO.inspect e
      conn
      |> put_status(404)
      |> text("NotFound")
  end

  rescue_from :all, as: e do
      IO.inspect e
      conn
      |> put_status(500)
      |> text("Server Global Error")
  end

end