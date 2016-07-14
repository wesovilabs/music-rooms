defmodule MusicRoomsServer.UserRouter do
  use Maru.Router

  namespace :user do

    route_param :id do

      version "v1" do
          get do
            json(conn, %{user: params[:id]})
          end

      end

      desc "create a user resource"

      params do
        requires :email, type: String
        group   :name, type: Map do
          requires :firstName, type: String
          requires :lastName, type: String
        end
        optional :metadata, type: List do
          requires :key
          requires :value
        end
        requires :channel, type: String, default: "Reggeaton"
      end
    end
  end
end

