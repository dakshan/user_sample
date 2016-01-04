class Project < ActiveRecord::Base
  belongs_to :user, inverse_of: :projects, required: true

  validates :name, presence: true
end
