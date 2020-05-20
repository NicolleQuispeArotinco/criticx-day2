class Critic < ApplicationRecord
  belongs_to :game
  validates :game_id, presence:true
  validates :username, length: { in: 2..12 }
  validates :username , format: {with: /\w+/}
  validates :title, :body, presence: { message: 'Please write something!'}
end
