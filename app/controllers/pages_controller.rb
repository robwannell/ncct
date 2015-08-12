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
  end
  
  def enrollment
    @programs = Program.all
  end
  
  def gallery
      @albums = Album.all
    end
    
    def board
      @bm = Boardmember.all
    end
end
