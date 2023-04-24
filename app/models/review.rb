class Review < ApplicationRecord
    belongs_to :user_receive, class_name: "User"
end
