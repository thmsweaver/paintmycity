class PagesController < ApplicationController
  def index
    @compositions = Composition.all
    @json = @compositions.to_gmaps4rails do |composition, marker|
      marker.infowindow render_to_string(:partial => "/compositions/infowindow", :locals => {composition: composition})
    end
  end
end
