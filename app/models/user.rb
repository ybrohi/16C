# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  gender          :string(255)
#  yob             :integer
#  claid           :string(255)
#  lid             :string(255)
#  score           :integer
#  karma           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base

	has_secure_password

	

	#validates_uniqueness_of :claid
end
