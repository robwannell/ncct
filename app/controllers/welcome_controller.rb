class WelcomeController < ApplicationController
  def index
    @news = Announcement.first
    @grads = Graduate.first
  end
end
