class ContactController < ApplicationController
  def index

    @url_maps = 'https://maps.googleapis.com/maps/api/js?key='+Rails.application.credentials.google_cloude[:key]+'&callback=initMap&libraries=&v=weekly&channel=2'
    
  end
end
