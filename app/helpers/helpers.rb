class Helpers
  def self.current_user(session)
    #binding.pry
    User.find(session[:user_id]) if session[:user_id]
  end

  def self.is_logged_in?(session)
    !!self.current_user(session)
  end
end