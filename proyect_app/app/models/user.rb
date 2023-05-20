class User < ApplicationRecord
    self.primary_key = 'mail'
    has_one :ticket_list, primary_key: 'mail', foreign_key: 'user_mail', dependent: :destroy
    has_many :tickets, through: :ticket_list 

    after_validation :set_email_key


    validates :mail, email: true
    validates :name, presence: true
    validates :last_name, presence: true
    validates :phone, presence: true
    validates :password, presence: true

    def set_email_key
        self.mail_original=self.mail
        self.mail= mail.gsub('.', '')
    end
end
