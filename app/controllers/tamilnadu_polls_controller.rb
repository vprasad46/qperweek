class TamilnaduPollsController < ApplicationController

	def index
		@tamilnadu_poll = TamilnaduPoll.new
	end

	def create
		@tamilnadu_poll = TamilnaduPoll.new(create_params)
		
		ip = remote_ip()
		@tamilnadu_poll.update(ip: ip)

		if @tamilnadu_poll.save
			flash[:success] = "Response Successfully recorded!"
			redirect_to(tamilnadu_polls_index_path)
		else
			flash[:danger] = @tamilnadu_poll.errors.full_messages
			redirect_to(tamilnadu_polls_index_path)
		end
		
	end

	private 
	def create_params
		params.require(:tamilnadu_poll).permit(:choice,:email,:voter)
	end
end
