class ApplicationController < ActionController::Base
 def remote_ip
    if request.remote_ip == '127.0.0.1'
      '123.45.67.89'
    else
      request.remote_ip
    end
  end
end
