class User < ActiveRecord::Base
  has_many :projects, inverse_of: :user

  validates :name, presence: true
end
