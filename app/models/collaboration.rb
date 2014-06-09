# == Schema Information
#
# Table name: collaborations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  company    :string(255)
#  phone      :integer
#  city       :string(255)
#  country    :string(255)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

class Collaboration < ActiveRecord::Base

	include Humanizer
	require_human_on :create

validates :name, presence: true, length: { maximum: 24 }
EMAIL_CHECKER = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
validates :email, presence: true, format: { with: EMAIL_CHECKER }
validates :phone, numericality: { only_integer: true }
validates :city, presence: true
validates :country, presence: true


end
