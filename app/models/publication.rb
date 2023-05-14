class Publication < ApplicationRecord
    belongs_to :user
    validates :description, presence: true
    validates :contents, presence: true
    validates :duration, presence: true
    validates :modality, presence: true
    validates :price, presence: true
    validates :likes_number, presence: true
end
