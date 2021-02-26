class User < ApplicationRecord
    has_many :created_events, class_name: "Event", foreign_key: :creator_id
    has_many :event_invites, class_name: "Invitation", foreign_key: :invitee_id
    has_many :attended_events, through: :event_invites, source: :event
end
