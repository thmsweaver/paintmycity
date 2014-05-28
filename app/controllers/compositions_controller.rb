class CompositionsController < ApplicationController
  before_action :find_user
  before_action :find_composition, only: [:show, :edit, :update]
  before_action :load_composition, only: [:destroy]

  def index
    @compositions = Composition.all
  end

  def new
    @composition = Composition.new
  end

  def create
    composition = @user.compositions.build(composition_params)
      if composition.save
        redirect_to user_compositions_path(@user)
  # question: why does this not work - users_path(@user)?
      else
        flash[:error] = 'please complete the form before saving'
        render :new
      end
  end

  def show
    @json = @composition.to_gmaps4rails
  end

  def edit
  end

  def update
    if @composition.update(composition_params)
      redirect_to user_composition_path
    else
      render :edit
    end
  end

  def destroy
    @composition.destroy
    redirect_to user_compositions_path
  end

private

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_composition
    @composition = Composition.find(params[:id])
  end

  def composition_params
    params.require(:composition).permit(
      :title,
      :latitude,
      :longitude,
      :image_url
    )
  end

  def load_composition
    return @composition = Composition.find_by(id: params[:id])
  end

end
