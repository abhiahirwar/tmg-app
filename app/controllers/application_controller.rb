class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  after_filter :store_location

  def store_location
    # store last url - this is needed for post-login redirect to whatever the user last visited.
    if (request.fullpath != "/login" &&
        request.fullpath != "/sign_up" &&
        request.fullpath != "/password/new" &&
        request.fullpath != "/confirmation/new" &&
        request.fullpath != "/logout" &&
        request.fullpath != "/success" &&
        request.fullpath != "/" &&
        request.fullpath != "" &&
        request.fullpath.split("?")[0] != "/send_enrolment_mail" &&
        !request.xhr?) # don't store ajax calls
       session[:previous_url] = request.fullpath
       if !current_user.blank?
         current_user.return_to_url = request.fullpath
         current_user.save
       end
    end
  end

  def after_sign_in_path_for(resource)
    if current_user.role?("superadmin")
      admin_dashboards_path
    else
        request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end
  end
end
