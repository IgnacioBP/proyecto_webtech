class Ticket < ApplicationRecord
    #has_one_attached :file
    has_many_attached :files

    has_one :ticket_list 
    has_one :user, through: :ticket_list 
    has_one :assign_ticket
    has_one :executive, through: :assign_ticket 
    has_one :tag_list
    has_one :chat



    validates :title, presence:true
    validates :incident_description, presence: true
    validates :priority, presence: true
    validates :state, presence:true
    validates :star_number, numericality: {only_integer: true ,in: 0..6}


    after_update :change_values



    def change_values
        if "Yes".eql? self.accept_or_reject_solution
            self.executive.update_closed_count_by_1
            self.executive.update_stars_value(self.star_number)
            
        end
    end





end
