class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_action :verify_authenticity_token

  def google_oauth2
    logger.info("uid = #{request.env['omniauth.auth'].uid}")
    logger.info("info = #{request.env['omniauth.auth'].info}")

    oinfo = request.env['omniauth.auth'].info

    if user = User.where(:email => oinfo.email).first
      sign_in_and_redirect user, :event => :authentication    
    else
      redirect_to home_path
    end
  end
end

