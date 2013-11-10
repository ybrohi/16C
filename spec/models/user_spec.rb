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

require 'spec_helper'

describe User do

before { @user = User.new( gender: "male", yob: "1984")}

subject { @user }

  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

end
