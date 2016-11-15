class Actor < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { :scope => :dob }

  has_many :movies
  has_many :characters
end
