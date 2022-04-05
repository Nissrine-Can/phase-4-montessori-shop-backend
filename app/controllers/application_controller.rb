class ApplicationController < ActionController::API

    private
    
    def current_user
        User.find_by_username(fun_mom)
    end

end
