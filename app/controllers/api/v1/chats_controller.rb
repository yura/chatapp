module Api
  module V1
    class ChatsController < ApiController
      def index
        @chats = Chat.all
      end
    end
  end
end
