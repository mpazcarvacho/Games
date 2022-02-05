class GamepicsController < ApplicationController
  before_action :set_gamepic, only: %i[ show edit update destroy ]

  # GET /gamepics or /gamepics.json
  def index
    @gamepics = Gamepic.all
  end

  # GET /gamepics/1 or /gamepics/1.json
  def show
  end

  # GET /gamepics/new
  def new
    @gamepic = Gamepic.new
  end

  # GET /gamepics/1/edit
  def edit
  end

  # POST /gamepics or /gamepics.json
  def create
    @gamepic = Gamepic.new(gamepic_params)

    respond_to do |format|
      if @gamepic.save
        format.html { redirect_to gamepic_url(@gamepic), notice: "Gamepic was successfully created." }
        format.json { render :show, status: :created, location: @gamepic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gamepic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamepics/1 or /gamepics/1.json
  def update
    respond_to do |format|
      if @gamepic.update(gamepic_params)
        format.html { redirect_to gamepic_url(@gamepic), notice: "Gamepic was successfully updated." }
        format.json { render :show, status: :ok, location: @gamepic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gamepic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamepics/1 or /gamepics/1.json
  def destroy
    @gamepic.destroy

    respond_to do |format|
      format.html { redirect_to gamepics_url, notice: "Gamepic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamepic
      @gamepic = Gamepic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gamepic_params
      params.require(:gamepic).permit(:name, :url, :game_id)
    end
end
