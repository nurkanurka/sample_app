module SessionsHelper
  def sign_in(user)
    session[:current_user_id] = user.remember_token
    current_user = user
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def sign_out
    current_user = nil
    session[:current_user_id] = nil
  end
  
  private
  
    def user_from_remember_token
      remember_token = session[:current_user_id]
      User.find_by_remember_token(remember_token) unless remember_token.nil?
    end
end
