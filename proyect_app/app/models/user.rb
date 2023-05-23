class User < ApplicationRecord
    self.primary_key = 'mail'
    has_one :ticket_list, primary_key: 'mail', foreign_key: 'user_mail', dependent: :destroy
    has_many :tickets, through: :ticket_list 


    belongs_to :all_user 
    
    before_validation :create_users
    after_validation :set_email_key

    # call  .delete_users in controller  en vez de  .destroy



    validates :mail_original, email: true
    validates :name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
    validates :password, presence: true

    def create_users
        if self.all_user_id.nil?
            self.mail_original=self.mail
            self.all_user = AllUser.create account_level: "User", account_mail: self.mail 
        end
        
    end


    def set_email_key
        self.mail= mail.gsub('.', '')

    end

    def delete_users
        self.all_user.destroy
    end


end
