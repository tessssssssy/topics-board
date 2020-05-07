class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    flash[:authorization_error] = "❌ Not authorized! ❌"
    redirect_to topics_path
   end 
end
