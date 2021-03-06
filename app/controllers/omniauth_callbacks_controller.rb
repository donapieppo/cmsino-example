class OmniauthCallbacksController < Devise::OmniauthCallbacksController  
  skip_before_action :verify_authenticity_token

  def developer
    user = User.first
    sign_in_and_redirect user, event: :authentication  
  end

  def google_oauth2
    logger.info("uid = #{request.env['omniauth.auth'].uid}")
    logger.info("info = #{request.env['omniauth.auth'].info}")

    oinfo = request.env['omniauth.auth'].info

    if user = User.where(email: oinfo.email).first
      sign_in_and_redirect user, event: :authentication    
    else
      redirect_to root_path
    end
  end
end

