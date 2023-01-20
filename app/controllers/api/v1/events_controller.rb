class Api::V1::EventsController < ApplicationController

    before_action :set_event, only: [:show, :update, :destroy]

    skip_before_action :authorized
    

    rescue_from ActiveRecord::RecordInvalid, with: :valid_event

   
    def index
        @events = Event.all
        # @bookings = current_user.bookings
        render json: @events, status: :ok
    end

    def show
        render json: @event, status: :ok
    end

    def create
        @event = Event.create!(event_params)
        render json: @event, status: :created
    end

    def update
        @event.update!(event_params)
        render json: @event, status: :ok
    end

    def destroy
        if @event.destroy
          render json: {}
        else
            render json: {error: "Something went wrong"}
        end 
    end

    private 

    def set_event
        @event = Event.find(params[:id])
    rescue ActiveRecord::RecordNotFound => error
        render json: error.message, status: :unauthorized
    end

    def event_params
        params.permit(:name, :image_url, :description, :location, :start_date,
        :end_date, :start_time, :end_time, :total_tickets, :remaining_tickets, :amount, :category_id)
    end

    def valid_event(valid)
        render json:{errors: valid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
