class AllUser < ApplicationRecord

    has_one :user, dependent: :destroy
    has_one :executive, dependent: :destroy
    has_one :supervisor, dependent: :destroy
    has_one :administrator, dependent: :destroy

    validates :account_mail, email: true, uniqueness: true
    validates :account_level, presence: true
end
