class Collaboration < ActiveRecord::Base

validates :name, presence: true, length: { maximum: 24 }
EMAIL_CHECKER = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
validates :email, presence: true, format: { with: EMAIL_CHECKER }
validates :phone, numericality: { only_integer: true }
validates :city, presence: true
validates :country, presence: true


end
