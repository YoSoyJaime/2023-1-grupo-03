class Review < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_receive_id"
    belongs_to :user, class_name: "User", foreign_key: "user_emit_id"
    validates :feedback, presence: true
    validates :score, presence: true
    validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
