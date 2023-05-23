class CreateExecutiveReports < ActiveRecord::Migration[7.0]
  def change
    create_table :executive_reports do |t|

      t.references :executive_mail, references: :executive, null: false
      t.timestamps
    end
  end
end
