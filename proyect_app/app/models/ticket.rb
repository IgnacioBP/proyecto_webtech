class Ticket < ApplicationRecord
    #has_one_attached :file
    has_many_attached :files

    has_one :ticket_list
    has_one :assign_ticket
end
