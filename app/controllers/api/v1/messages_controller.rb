module Api
  module V1
    class MessagesController < ApiController
      def create
        @message = Message.new(message_params)

        if @message.save
          render :show, status: :created
        else
          render json: @message.errors, status: :unprocessable_entity
        end
      end

      private

      # Only allow a list of trusted parameters through.
      def message_params
        params.require(:message).permit(:body, :chat_id)
      end
    end
  end
end
