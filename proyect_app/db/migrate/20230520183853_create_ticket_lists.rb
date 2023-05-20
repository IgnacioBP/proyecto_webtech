class CreateTicketLists < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_lists do |t|

      t.references :user_mail, references: :users, null: false
      t.timestamps
    end
  end
end
