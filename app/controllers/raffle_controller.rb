class RaffleController < ApplicationController
  before_action :set_raffle, only: [:show, :edit, :update, :destroy]

  # GET /raffle
  # GET /raffle.json
  def index
    @raffle = Raffle.all
    
  end

  # GET /raffle/1
  # GET /raffle/1.json
  def show
  end

  # GET /raffle/new
  def new
    @raffle = Raffle.new
  end

  # GET /raffle/1/edit
  def edit
  end

  # POST /raffle
  # POST /raffle.json
  def create
    @raffle = Raffle.new(raffle_params)

    respond_to do |format|
      if @raffle.save
        format.html { redirect_to raffle_index_url, notice: 'Raffle was successfully created.' }
        format.json { render :show, status: :created, location: @raffle }
      else
        format.html { render :new }
        format.json { render json: @raffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raffle/1
  # PATCH/PUT /raffle/1.json
  def update
    respond_to do |format|
      if @raffle.update(raffle_params)
        format.html { redirect_to raffle_index_url, notice: 'Raffle was successfully updated.' }
        format.json { render :show, status: :ok, location: @raffle }
      else
        format.html { render :edit }
        format.json { render json: @raffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raffle/1
  # DELETE /raffle/1.json
  def destroy
    @raffle.destroy
    respond_to do |format|
      format.html { redirect_to raffle_index_url, notice: 'Raffle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raffle
      @raffle = Raffle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raffle_params
      params.require(:raffle).permit(:name, :date, :description, :display, :avatar)
    end
end
