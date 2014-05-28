class PagesController < ApplicationController
  def index
    @compositions = Composition.all
    @json = @compositions.to_gmaps4rails
  end
end
