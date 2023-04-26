class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  
  has_many :reviews, dependent: :destroy, foreign_key: "user_receive_id"
  has_many :reviews, dependent: :destroy, foreign_key: "user_emit_id"
  has_many :publications, class_name: "Pubication", dependent: :destroy

end
