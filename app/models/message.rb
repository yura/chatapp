class Message < ApplicationRecord
  include ActionView::RecordIdentifier
  belongs_to :chat

  after_create_commit do
    broadcast_append_to dom_id(chat, 'messages'), target: dom_id(chat, 'messages')
    broadcast_append_to 'flash', target: 'flash', partial: 'shared/flash', locals: { message: self }
  end
end
