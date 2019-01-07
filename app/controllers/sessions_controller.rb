class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
      user = User.find_by(name: params[:name])
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        session[:user_name] = user.name
        redirect_to admin_url
        # redirect_to items_url
      else
        redirect_to login_url, alert: "无效用户或是密码错误，请重新登录！"
      end
    end

  def destroy
    session[:user_id] = nil
    session[:user_name] = nil
    redirect_to login_url, notice: "Logged out"
  end

end
