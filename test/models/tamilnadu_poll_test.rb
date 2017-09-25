# == Schema Information
#
# Table name: tamilnadu_polls
#
#  id         :integer          not null, primary key
#  ip         :string
#  email      :string
#  choice     :integer
#  voter      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TamilnaduPollTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
