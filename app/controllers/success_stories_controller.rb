class SuccessStoriesController < ApplicationController
  before_action :set_success_story, only: [:show, :edit, :update, :destroy]
   before_filter :require_login, except: [:show]
  # GET /success_stories
  # GET /success_stories.json
  def index
    @success_stories = SuccessStory.all
  end

  # GET /success_stories/1
  # GET /success_stories/1.json
  def show
  end

  # GET /success_stories/new
  def new
    @success_story = SuccessStory.new
  end

  # GET /success_stories/1/edit
  def edit
  end

  # POST /success_stories
  # POST /success_stories.json
  def create
    @success_story = SuccessStory.new(success_story_params)

    respond_to do |format|
      if @success_story.save
        format.html { redirect_to success_stories_url, notice: 'Success story was successfully created.' }
        format.json { render :show, status: :created, location: @success_story }
      else
        format.html { render :new }
        format.json { render json: @success_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /success_stories/1
  # PATCH/PUT /success_stories/1.json
  def update
    respond_to do |format|
      if @success_story.update(success_story_params)
        format.html { redirect_to success_stories_url, notice: 'Success story was successfully updated.' }
        format.json { render :show, status: :ok, location: @success_story }
      else
        format.html { render :edit }
        format.json { render json: @success_story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /success_stories/1
  # DELETE /success_stories/1.json
  def destroy
    @success_story.destroy
    respond_to do |format|
      format.html { redirect_to success_stories_url, notice: 'Success story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_success_story
      @success_story = SuccessStory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def success_story_params
      params.require(:success_story).permit(:name, :title, :content, :ranking, :avatar)
    end
end
