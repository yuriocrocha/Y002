class HomeController < ApplicationController
  before_action :set_auth
  def index
  	 @posts = Post.last(10)
  end
  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end
  def username(user)
    if user == nil
    var = User.find_by(id: user)
    else
      var ="anonimo"
    end
    return var
  end

end