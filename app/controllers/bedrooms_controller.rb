class BedroomsController < ApplicationController
  before_action :set_bedroom, only: %i[ show edit update destroy ]

  # GET /bedrooms or /bedrooms.json
  def index
    @bedrooms = Bedroom.all
  end

  # GET /bedrooms/1 or /bedrooms/1.json
  def show
  end

  # GET /bedrooms/new
  def new
    @bedroom = Bedroom.new
  end

  # GET /bedrooms/1/edit
  def edit
  end

  # POST /bedrooms or /bedrooms.json
  def create
    @bedroom = Bedroom.new(bedroom_params)

    respond_to do |format|
      if @bedroom.save
        format.html { redirect_to @bedroom, notice: "Bedroom was successfully created." }
        format.json { render :show, status: :created, location: @bedroom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bedroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bedrooms/1 or /bedrooms/1.json
  def update
    respond_to do |format|
      if @bedroom.update(bedroom_params)
        format.html { redirect_to @bedroom, notice: "Bedroom was successfully updated." }
        format.json { render :show, status: :ok, location: @bedroom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bedroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bedrooms/1 or /bedrooms/1.json
  def destroy
    @bedroom.destroy
    respond_to do |format|
      format.html { redirect_to bedrooms_url, notice: "Bedroom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bedroom
      @bedroom = Bedroom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bedroom_params
      params.require(:bedroom).permit(:status, :quantity, :room/type_id)
    end
end
