class Group < ActiveRecord::Base
  belongs_to :creator, class_name: User
  has_and_belongs_to_many :creator , class_name: Friend

  validates :name, presence: true
end
