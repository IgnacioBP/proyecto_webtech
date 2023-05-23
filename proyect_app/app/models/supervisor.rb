class Supervisor < ApplicationRecord

    self.primary_key = 'mail'

    belongs_to :all_user 
    
    before_validation :create_users
    after_validation :set_email_key

    before_destroy :delete_users



    validates :mail_original, email: true
    validates :name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
    validates :password, presence: true

    def create_users
        if self.all_user_id.nil?
            self.mail_original=self.mail
            self.all_user = AllUser.create account_level: "Supervisor", account_mail: self.mail 
        end
        
    end


    def set_email_key
        self.mail= mail.gsub('.', '')

    end

    def delete_users
        self.all_user.destroy
    end


end
