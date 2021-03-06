class Composition < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_many :users, :through => :comments

  validates :title, presence: true
  validates :user, presence: true
  validates :latitude,
    presence: true,
    numericality: { greater_than_or_equal_to: -90, less_than_or_equal_to: 90 }
    # question: why do the below two formats throw errors?
    #format: { with: /^(-?[1-8]?\d(?:\.\d{1,6})?|90(?:\.0{1,6})?)$/ }
  validates :longitude,
    presence: true,
    numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
    #format: { with: /^(-?(?:1[0-7]|[1-9])?\d(?:\.\d{1,6})?|180(?:\.0{1,6})?)$/ }

    acts_as_gmappable :process_geocoding => false

end
