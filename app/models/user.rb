class User < ActiveRecord::Base
  has_many :project

  validates :name, presence: true
end
