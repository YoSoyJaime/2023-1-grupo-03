class Course < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :acronym, presence: true
end
