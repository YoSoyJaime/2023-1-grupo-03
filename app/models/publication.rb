class Publication < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :category, presence: true
    validates :modality, presence: true
    validates :duration, presence: true
    validates :contents, presence: true
    validates :likes_number, presence: true
end
