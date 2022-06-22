class User < ApplicationRecord
    has_many:events, through: :booking
    has_many:bookings
    has_and_belongs_to_many :roles
end
