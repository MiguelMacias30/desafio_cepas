class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
		vinos_path
  end 
end
