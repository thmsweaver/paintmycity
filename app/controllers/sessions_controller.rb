class SessionsController < ApplicationController
  def new
  end

  def create
    # Find the user by email:
    user = User.find_by(email: params[:session][:email].downcase)

    # Test if the user was found AND authenticates
    if user && user.authenticate(params[:session][:password])
      sign_in user
    # question, should I have changed the below to user?
      redirect_back_or user
    else
      flash[:error] = 'Invalid email/password'
      redirect_to signin_path
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
