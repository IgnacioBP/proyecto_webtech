class Administrator < ApplicationRecord
    self.primary_key = 'mail'

    has_many :performance_reports ,primary_key: 'mail', foreign_key: 'administrator_mail', dependent: :destroy
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
            if Administrator.all.count === 1
                errors.add(:base, "You can only have one administrator")
            else
                self.mail_original=self.mail
                self.all_user = AllUser.create account_level: "Administrator", account_mail: self.mail 
            end
        end
        
    end


    def set_email_key
        self.mail= mail.gsub('.', '')

    end

    def delete_users
        self.all_user.destroy
    end

    
end
