class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :incident_description
      t.datetime :creation_date
      t.datetime :resolution_date
      t.datetime :response_to_user_date
      t.string :priority
      t.string :state
      t.string :resolution_key
      t.string :response_key
      t.string :response_to_user
      t.string :accept_or_reject_solution
      t.integer :star_number
      t.datetime :limit_time_response
      t.datetime :limit_time_resolution

      t.timestamps
    end
  end
end
