class Event < ApplicationRecord
    belongs_to:category
    has_many:users, through: :booking
    has_many:bookings
    belongs_to:location
    has_many:notifications, as: :notifiable

    after_create :create_notification

    private
    def create_notification
        self.notifications.create(message:"#{self.name} Event Update")
    end
end
