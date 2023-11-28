class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @bookings_as_attendee = current_user.bookings
    @bookings_as_org = current_user.bookings_as_org
    @events_as_org = current_user.events
  end
end
