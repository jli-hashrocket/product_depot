module SessionCounter
  extend ActiveSupport::Concern

  private
    def count_sessions
      if session[:counter].nil?
        session[:counter] = 0
      else
        session[:counter] += 1
      end

    end

end
