class Movie < ActiveRecord::Base
  validates :director_id, presence: true
  validates :title, :presence => true, :uniqueness => { :scope => :year }
  validates :year, inclusion: { in: 1870..2050 }
  validates :duration, inclusion: { in: 0..2764800 }

  belongs_to :director
  has_many :characters
  has_many :actors, :through => :characters

end
