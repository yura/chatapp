class Message < ApplicationRecord
  belongs_to :chat

  after_create_commit do
    broadcast_append_to 'messages'
    broadcast_append_to 'flash', target: 'flash', partial: 'shared/flash', locals: { message: self }
  end
end
