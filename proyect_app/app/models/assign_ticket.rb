class AssignTicket < ApplicationRecord

    belongs_to :executive, foreign_key: "executive_mail"
    belongs_to :ticket
end
