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

class TamilnaduPoll < ApplicationRecord

	enum choice: [:aiadmk,:rajini,:kamal,:dmk,:pmk,:dmdk,:other]
	enum voter: [:adult,:child]

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255},format: {with: VALID_EMAIL_REGEX},uniqueness: {case_sensitive: false}
	before_save :email_downcase 
	validate :ip_used_three_times?


	private
	def email_downcase
  	self.email.downcase!
	end

	def ip_used_three_times?
		a = TamilnaduPoll.where(ip: self.ip)
		if a.count == 4 then
			self.errors.add(:ip, "Ip used three times")
		end
	end
end
