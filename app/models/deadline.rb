# == Schema Information
#
# Table name: deadlines
#
#  id         :integer          not null, primary key
#  endtime    :datetime
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deadline < ApplicationRecord
end
