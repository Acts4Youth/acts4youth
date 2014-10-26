class Event < ActiveRecord::Base
  validates :description, presence: true
  validates :title, presence: true
end
