class CreateSupervisors < ActiveRecord::Migration[7.0]
  def change
    create_table :supervisors, id: false  do |t|
      t.string :mail
      t.string :name, null: false
      t.string :last_name, null: false
      t.integer :phone, null: false
      t.text :password, null: false
      t.string :mail_original

      t.timestamps
    end
    execute "ALTER TABLE supervisors ADD PRIMARY KEY (mail);"
  end
end
