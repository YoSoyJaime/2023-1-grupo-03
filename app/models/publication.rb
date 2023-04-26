class Publication < ApplicationRecord
    validates :contents, presence: true
    validates :description, presence: true
    validates :duration, presence: true
    belongs_to :course
    belongs_to :user 
end
