class CreateAllUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :all_users do |t|

      t.text :account_mail, null: false
      t.string :account_level, null: false

      t.timestamps
    end
  end
end
