class Helpers
  def self.current_user(session)
    #binding.pry
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def self.is_logged_in?(session)
    !!self.current_user(session)
  end
end