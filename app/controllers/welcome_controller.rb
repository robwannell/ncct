class WelcomeController < ApplicationController
  def index
    @news = Announcement.first
  end
end
