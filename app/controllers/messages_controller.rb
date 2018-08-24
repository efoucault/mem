class MessagesController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.booking = Booking.find(params[:booking_id])
    if current_user == @message.booking.customer
      @message.customer = current_user
    else
      @message.owner = @message.booking.watch.user
    end
    @message.save!
    redirect_to booking_path(@message.booking)
     # if @message.save
     #   respond_to do |format|
     #     format.html { redirect_to booking_path(@message.booking) }
     #     format.js  # <-- will render `app/views/messages/create.js.erb`
     #    end
     #  end
    # else
    #   respond_to do |format|
    #     format.html { render 'bookings/show' }
    #     format.js  # <-- idem
    #   end
    # end
  end
end

private

def message_params
  params.require(:message).permit(:message, :customer_id, :owner_id, :booking_id)
end
