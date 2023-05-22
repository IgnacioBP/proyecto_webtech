class CreateAssignTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :assign_tickets do |t|

      t.references :executive_mail, references: :executive, null: false
      t.timestamps
    end
  end
end
