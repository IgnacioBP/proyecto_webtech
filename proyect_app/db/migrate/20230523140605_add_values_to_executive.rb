class AddValuesToExecutive < ActiveRecord::Migration[7.0]
  def change
    change_table :executives do |t|
      t.bigint :stars_value, null: false, default: 0
      t.bigint :closed_count, null: false, default: 0
    end
  end
end
