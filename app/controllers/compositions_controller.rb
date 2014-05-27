class CompositionsController < ApplicationController
  before_action :find_user, only: [:index, :new, :create]

  def index
    @compositions = Composition.all
  end

  def new
    @composition = Composition.new
  end

  def create
    @composition = Composition.new(composition_params)
      if @composition.save
        redirect_to "/users/#{@user.id}/compositions"
  # question: why does this not work - users_path(@user)?
      else
        flash[:error] = 'please complete the form before saving'
        render :new
    end
  end

  def show
    @composition = Composition.find(params[:id])
  end

private

  def find_user
    @user = User.find(params[:user_id])
  end

  def composition_params
    params.require(:composition).permit(
      :title,
      :latitude,
      :longitude,
      :image_url
    )
  end

end
