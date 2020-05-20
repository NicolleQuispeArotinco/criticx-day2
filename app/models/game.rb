class Game < ApplicationRecord
    validates :id, :name, :genre, :price, :release_date, presence: true
    validates :genre, inclusion: { in: %w(Simulator Adventure Strategy Role-playing (RPG) Shooter Fighting Sport), message: "%Invalid genre"}
    validates :price, numericality: { greater_than_or_equal_to: 0}
end