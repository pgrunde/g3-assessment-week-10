class Gif < ActiveRecord::Base
  validates :url, presence: true
  validates :description, presence: true
end