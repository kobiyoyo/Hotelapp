class BedroomsController < ApplicationController

  def index
    @bedrooms = Bedrooms::ListBedroomService.run!
  end

  def show
    @bedroom = find_bedroom!
  end

  def new
    @bedroom = Bedrooms::CreateBedroomService.new
  end


  def edit
    @bedroom = find_bedroom!
  end


  def create
    result = Bedrooms::CreateBedroomService.run(bedroom_params)
    if result.valid?
      redirect_to bedrooms_path, notice: "Bedroom was successfully created." 
    else
      @bedroom = result
      render :new
    end
  end


  def update
    @bedroom = find_bedroom!
    result = Bedrooms::UpdateBedroomService.run(bedroom_params.merge(bedroom: @bedroom))
    
    if result.valid?
      redirect_to bedroom_path(bedroom: @bedroom), notice: "Bedroom was successfully updated." 
    else
      @bedroom = result
      render :edit
    end
  end


  def destroy
    Bedrooms::DestroyBedroomService.run!(bedroom: find_bedroom!)
    redirect_to room_type_path(find_room_type!), notice: "Bedroom was successfully destroyed." 
  end

  private

    def bedroom_params
      params.require(:bedroom).permit(:status, :quantity, :room_type_id)
    end

    def find_bedroom!
      bedroom = Bedrooms::FindBedroomService.run(params)
      raise ActiveRecord::RecordNotFound, bedroom.errors.full_messages.to_sentence unless bedroom.valid?
      bedroom.result
    end

    def find_room_type!
      room_type = Types::FindRoomTypeService.run(id: params[:room_type_id])
      raise ActiveRecord::RecordNotFound, room_type.errors.full_messages.to_sentence unless room_type.valid?
      room_type.result
    end


end
