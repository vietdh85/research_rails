class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def list_oauth
    @list = OauthAccessToken.all

    obj = OauthAccessToken.where(:token => '9626e06966604db3e826e202370433677fdb6ae84225940bc75ad4d1dc524737').first
    puts obj.created_at.to_i

  end

end
