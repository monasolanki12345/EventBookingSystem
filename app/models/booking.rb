class Booking < ApplicationRecord
    belongs_to:user
    belongs_to:event
    enum status: { cancel: 0, confirm: 1, pending: 2 }
end
