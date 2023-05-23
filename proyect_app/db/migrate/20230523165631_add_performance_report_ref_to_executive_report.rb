class AddPerformanceReportRefToExecutiveReport < ActiveRecord::Migration[7.0]
  def change
    add_reference :executive_reports, :performance_report, null: false, foreign_key: true
  end
end
