class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cinemas

  with_options presence: true do 
    validates :nickname, length: { maximum: 20 }
    validates :birthday
    validates :full_name
    validates :furigana
    validates :sex
  end
end
