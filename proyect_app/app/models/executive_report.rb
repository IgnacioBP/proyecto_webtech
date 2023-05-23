class ExecutiveReport < ApplicationRecord

    belongs_to :executive, foreign_key: "executive_mail"
    belongs_to :performance_report
end
