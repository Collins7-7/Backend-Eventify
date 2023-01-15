class BookingsController < ApplicationController


    before_action :authorized
    before_action :set_booking, only: [:show, :update, :destroy]

rescue_from ActiveRecord::RecordInvalid, with: :valid_booking

    def index
        @bookings = Booking.accessible_by(current_ability)
        # @bookings = current_user.bookings
        render json: @bookings, status: :ok
    end

    def show
        render json: @booking, status: :ok
    end

    # def create
    #     @booking = current_user.bookings.create!(booking_params)
    #     render json: @booking, status: :created
    # end

    def create
        event = Event.find(params[:event_id])

        amount_to_pay = params[:no_of_tickets].to_i * event.amount

        booking = event.bookings.create(
            user_id: current_user.id,
            no_of_tickets: params[:no_of_tickets].to_i,
            amount_paid: amount_to_pay
        )
        
        # BookingsMailer.booking_confirmation(booking).deliver_now

        redirect_to event_path(event), notice: 'Your ticket has been booked'
    end

    def update
        @booking.update!(booking_params)
        render json: @booking, status: :ok
    end

    def destroy
        if @booking.destroy
          render json: {}
        else
            render json: {error: "Something went wrong"}
        end 
    end

    private 

    def set_booking
        @booking = current_user.bookings.find(params[:id])
    rescue ActiveRecord::RecordNotFound => error
        render json: error.message, status: :unauthorized
    end

    def booking_params
        params.permit(:no_of_tickets, :amount_paid, :user_id, :event_id)
    end

    def valid_booking(valid)
        render json:{errors: valid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
