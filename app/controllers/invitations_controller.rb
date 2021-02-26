class InvitationsController < ApplicationController
    def create
        event = Event.find(params[:event_id])
        attending = Invitation.new(event_id: event.id, invitee_id: current_user.id)

        if attending.save
            flash[:notice] = "You are attending #{event.name}."
            redirect_to event_path(event)
          else
            flash[:alert] = 'Could not enroll.'
            redirect_to event_path(event)
          end
    end
end
