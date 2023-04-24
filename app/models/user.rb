class User < ApplicationRecord
  validates_presence_of :first_name, :email, :password

  validates :first_name, length: {minimum: 3, maximum: 12}
  validates :email, format: {with: /\A(\S+)@(.+)\.(\S+)\z/, message: "invalid should be like this"}


end
