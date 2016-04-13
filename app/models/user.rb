class User < ActiveRecord::Base
  has_many :links

  validates :name, presence: true
  validates :username, presence: true
end
