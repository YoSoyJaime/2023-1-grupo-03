class Review < ApplicationRecord
    belongs_to :user
    validates :feedback, presence: true
    validates :score, presence: true
    validates :score, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
