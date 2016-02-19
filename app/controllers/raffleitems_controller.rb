class RaffleitemsController < ApplicationController
  before_action :set_raffleitem, only: [:show, :edit, :update, :destroy]

  # GET /raffleitems
  # GET /raffleitems.json
  def index
    @raffleitems = Raffleitem.all
  end

  # GET /raffleitems/1
  # GET /raffleitems/1.json
  def show
  end

  # GET /raffleitems/new
  def new
    @raffleitem = Raffleitem.new
  end

  # GET /raffleitems/1/edit
  def edit
  end

  # POST /raffleitems
  # POST /raffleitems.json
  def create
    @raffleitem = Raffleitem.new(raffleitem_params)

    respond_to do |format|
      if @raffleitem.save
        format.html { redirect_to raffle_index_url, notice: 'Raffleitem was successfully created.' }
        format.json { render :show, status: :created, location: @raffleitem }
      else
        format.html { render :new }
        format.json { render json: @raffleitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raffleitems/1
  # PATCH/PUT /raffleitems/1.json
  def update
    respond_to do |format|
      if @raffleitem.update(raffleitem_params)
        format.html { redirect_to raffle_index_url, notice: 'Raffleitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @raffleitem }
      else
        format.html { render :edit }
        format.json { render json: @raffleitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raffleitems/1
  # DELETE /raffleitems/1.json
  def destroy
    @raffleitem.destroy
    respond_to do |format|
      format.html { redirect_to raffle_index_url, notice: 'Raffleitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raffleitem
      @raffleitem = Raffleitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raffleitem_params
      params.require(:raffleitem).permit(:name, :ticket, :raffle_id, :itemnumber)
    end
end
