class Publication < ApplicationRecord
    validates :contents, presence: true

    belongs_to :user 
end
