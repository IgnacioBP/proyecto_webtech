class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title, null: false
      t.string :incident_description, null:false
      t.datetime :creation_date,null: false, default: Time.now
      t.datetime :resolution_date,null: false, default: Time.now
      t.datetime :response_to_user_date,null: false, default: Time.now
      t.string :priority,null: false, default: "Low"
      t.string :state, null: false, default: "Waiting"
      t.string :resolution_key,null: false, default: "not yet"
      t.string :response_key,null: false, default: "not yet"
      t.string :response_to_user,null: false, default: " "
      t.string :accept_or_reject_solution,null: false, default: "Waiting"
      t.integer :star_number,null: false, default: 0
      t.datetime :limit_time_response, null: false, default: Time.now
      t.datetime :limit_time_resolution,null: false, default: Time.now

      t.timestamps
    end
  end
end
