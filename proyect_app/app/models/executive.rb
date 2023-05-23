class Executive < ApplicationRecord

    self.primary_key = 'mail'
    has_one :assign_ticket, primary_key: 'mail', foreign_key: 'executive_mail', dependent: :destroy
    has_many :tickets, through: :assign_ticket 

    has_many :executive_reports,primary_key: 'mail', foreign_key: 'executive_mail'

    
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
            self.all_user = AllUser.create account_level: "Executive", account_mail: self.mail 
        end
        # account=AllUser.new account_level: "Executive", 
        # if account.save
        
    end


    def set_email_key
        self.mail= mail.gsub('.', '')

    end

    def delete_users
        self.all_user.destroy
    end


    def update_closed_count_by_1
        self.update closed_count: self.closed_count + 1
    end

    def update_stars_value (value)
        self.update stars_value: self.stars_value + value
    end
end
