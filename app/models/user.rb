class User < ApplicationRecord
  has_secure_password
  has_secure_token :api_token

  has_many :photos

  validates :email,
            presence: true,
            uniqueness: true,
            format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

end
