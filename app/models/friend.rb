class Friend < ActiveRecord::Base
  belongs_to :creator, class_name: User
  has_and_belongs_to_many :creator , class_name: Group


  validates :name, presence: true
  validates :phone, presence: true, if: -> { phone.blank? }
  validates :email, presence: true, if: -> { email.blank? }
end
