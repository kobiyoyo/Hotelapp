class Room::TypesController < ApplicationController
  def index
    @room_types = Types::ListRoomTypeService.run!
  end

  def new
    @room_type = Types::CreateRoomTypeService.new
  end

  def edit
    @room_type = find_room_type!
  end

  def create
    result = Types::CreateRoomTypeService.run(room_type_params)
    if result.valid?
      redirect_to room_types_url, notice: 'Room Type was successfully created.'
    else
      @room_type = result
      render :new
    end
  end

  def update
    result = Types::UpdateRoomTypeService.run(room_type_params.merge(room_type: find_room_type!))
    if result.valid?
      redirect_to room_types_url, notice: 'Type was successfully updated.'
    else
      @room_type = result
      render :edit
    end
  end

  def destroy
    Types::DestroyRoomTypeService.run!(room_type: find_room_type!)
    redirect_to room_types_url
  end

  private

  def find_room_type!
    room_type = Types::FindRoomTypeService.run(params)
    raise ActiveRecord::RecordNotFound, room_type.errors.full_messages.to_sentence unless room_type.valid?

    room_type.result
  end

  def find_bedroom!
    bedroom = Bedrooms::FindBedroomService.run(id: params[:bedroom_id])
    raise ActiveRecord::RecordNotFound, bedroom.errors.full_messages.to_sentence unless bedroom.valid?

    bedroom.result
  end

  def room_type_params
    params.require(:room_type).permit(:name, :price, :description)
  end
end
