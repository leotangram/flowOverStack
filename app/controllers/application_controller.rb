class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
	  def private_access
	  	redirect_to new_user_session_path, notice: "Nos hemos dado cuenta que estás tratando de hacer algo que no debes hacer, ¡ten cuidado! Te estamos vigilando :O" unless signed_in?
	  end
end
