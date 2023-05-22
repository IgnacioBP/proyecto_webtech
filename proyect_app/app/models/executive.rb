class Executive < ApplicationRecord

    self.primary_key = 'mail'
    has_one :assign_ticket, primary_key: 'mail', foreign_key: 'executive_mail', dependent: :destroy
    has_many :tickets, through: :assign_ticket 

    
    after_validation :set_email_key



    validates :mail, email: true
    validates :name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
    validates :password, presence: true

    def set_email_key
        self.mail_original=self.mail
        self.mail= mail.gsub('.', '')
        AllUser.create account_level: "Executive", account_mail: mail
    end

end
