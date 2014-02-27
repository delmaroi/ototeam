class Friend < ActiveRecord::Base
  validates :name, presence: true
  validates :phone, presence: true, if: -> { phone.blank? }
  validates :email, presence: true, if: -> { email.blank? }
end
