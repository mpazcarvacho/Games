class PartspicsController < ApplicationController
  before_action :set_partspic, only: %i[ show edit update destroy ]

  # GET /partspics or /partspics.json
  def index
    @partspics = Partspic.all
  end

  # GET /partspics/1 or /partspics/1.json
  def show
  end

  # GET /partspics/new
  def new
    @partspic = Partspic.new
  end

  # GET /partspics/1/edit
  def edit
  end

  # POST /partspics or /partspics.json
  def create
    @partspic = Partspic.new(partspic_params)

    respond_to do |format|
      if @partspic.save
        format.html { redirect_to partspic_url(@partspic), notice: "Partspic was successfully created." }
        format.json { render :show, status: :created, location: @partspic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @partspic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partspics/1 or /partspics/1.json
  def update
    respond_to do |format|
      if @partspic.update(partspic_params)
        format.html { redirect_to partspic_url(@partspic), notice: "Partspic was successfully updated." }
        format.json { render :show, status: :ok, location: @partspic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @partspic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partspics/1 or /partspics/1.json
  def destroy
    @partspic.destroy

    respond_to do |format|
      format.html { redirect_to partspics_url, notice: "Partspic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partspic
      @partspic = Partspic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def partspic_params
      params.require(:partspic).permit(:name, :url, :game_id)
    end
end
