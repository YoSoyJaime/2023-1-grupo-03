class Publication < ApplicationRecord
    validates :contents, presence: true
end
