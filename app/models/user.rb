class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cinemas
  has_one :favorite

  with_options presence: true do 
    validates :nickname, length: { maximum: 20 }
    validates :birthday
    validates :full_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :furigana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :sex
  end
end
