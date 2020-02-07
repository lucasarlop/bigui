class Api::V1::SessionsController < Api::ApiV1Controller
  respond_to :json

  def login
    # user = User.find_by_email(params[:email])

    # if user && user.valid_password?(params[:password])
    #   render :json => { token: user.api_key, email: user.email, nome: user.nome }
    # else
    #   render :json => { :errors => "invalid login" }, :status => 401
    # end
  end
end