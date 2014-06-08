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

require 'spec_helper'

describe Collaboration do
  pending "add some examples to (or delete) #{__FILE__}"
end
