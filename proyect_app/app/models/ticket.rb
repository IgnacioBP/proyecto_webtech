class Ticket < ApplicationRecord
    #has_one_attached :file
    has_many_attached :files

    has_one :ticket_list
end
