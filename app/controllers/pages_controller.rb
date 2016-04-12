class PagesController < ApplicationController
  def about
  end

  def careers
  end
  
  def team
    @bios = Bio.all
  end

  def curriculum
  end

  def success
    @success_stories = SuccessStory.all
  end
  
  def enrollment
    @programs = Program.all
  end
  
  def gallery
    @folders = Folder.all
      @albums = Album.all
    end
    
    def board
      @bm = Boardmember.all
    end
end
