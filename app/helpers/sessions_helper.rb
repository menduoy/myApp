module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  # ログインしただけでは、@current_userという変数は存在しておらず、
  # このcurrent_userというメソッドを、変数のように使う。
  def current_user
    if session[:user_id]
      @current_user = @current_user || User.find_by(id: session[:user_id])
    end
  end

  def log_out
    session.delete :user_id
    @current_user = nil
  end
end
