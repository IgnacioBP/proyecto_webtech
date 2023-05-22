class CreateAllUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :all_users do |t|

      t.text :account_mail
      t.string :account_level

      t.timestamps
    end
  end
end
