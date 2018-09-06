class V1::RoomsController < ApplicationController
  def index
  	@rooms = Room.all

  	render json: @rooms, status: :ok
  end

  def create
  	@room = Room.new(room_params)
  	
  	@room.save
  	render json:@room, status: :created
  end

  def destroy
  	@room = Room.where(id: params[:id]).first
    if @room.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  def room_params
  	params.require(:room).permit(:number_room, :name_room, :description)
  end

end
