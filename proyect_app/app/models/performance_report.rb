class PerformanceReport < ApplicationRecord

    has_many :executive_reports, dependent: :destroy
    
    belongs_to :administrator, foreign_key: "administrator_mail", optional: true
    belongs_to :supervisor, foreign_key: "supervisor_mail", optional: true
end
