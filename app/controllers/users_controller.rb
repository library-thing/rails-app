class UsersController < ApplicationController

  skip_before_filter :require_login, :only => :login

  def login
    render layout: "login"
  end


  def callback
    get temporary GitHub code...
    session_code = request.env['rack.request.query_hash']["code"]

    result = RestClient.post("https://github.com/login/oauth/access_token",
        {:client_id => LT_OAUTH_CLIENT_ID,
         :client_secret => LT_OAUTH_CLIENT_SECRET,
         :code => session_code
        },{
         :accept => :json
        })

    session[:access_token] = JSON.parse(result)["access_token"]

    redirect_to root_path
  end
end
