class Critic < ApplicationRecord
  belongs_to :game
  validates :created_at, :updated_at, :title, presence:true
  validates :username, length: { in: 2..12 }
  validate :title, :body, presence: { message: 'Please write something!'}
end
