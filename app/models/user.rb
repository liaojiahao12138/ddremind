class User < ApplicationRecord
  before_save { email.downcase! }
  validates :phonenum,  presence: true, length: { maximum: 11 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
end
