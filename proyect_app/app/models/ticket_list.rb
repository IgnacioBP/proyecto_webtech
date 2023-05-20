class TicketList < ApplicationRecord

    belongs_to :user, foreign_key: "user_mail"
    belongs_to :ticket
end
