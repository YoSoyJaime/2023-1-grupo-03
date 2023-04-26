class Publication < ApplicationRecord
    validates :contents, presence: true
    belongs_to :course
    belongs_to :user 
end
