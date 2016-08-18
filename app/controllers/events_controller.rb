class EventsController < ApplicationController
  def index
  	@events= Event.all 
    @user= User.find(session[:user_id])
  end

  def create
  	event= Event.new(event_params)
  	event[:user_id]= session[:user_id]
  	flash[:errors]= event.errors.full_messages unless event.save
  	redirect_to '/events'

  end

  def show
  	@event= Event.find(params[:id])
    @user= User.find(params[:id])
  end

  def destroy
    event= Event.find(params[:id])
    event.destroy
    redirect_to '/events'

  end

  private 
  	def event_params
  		params.require(:event).permit(:name, :date, :location)
  	end
end
