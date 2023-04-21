class Course < ApplicationRecord
    validates :name, presence: true
    validates :acronym, presence: true
end
