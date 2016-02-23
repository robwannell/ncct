class WelcomeController < ApplicationController
  def index
    @news = Announcement.first
    @grads = Graduate.first
    @raff = Raffle.first
    if @raff.display == true
      @raffle = @raff
    end
  end
end
