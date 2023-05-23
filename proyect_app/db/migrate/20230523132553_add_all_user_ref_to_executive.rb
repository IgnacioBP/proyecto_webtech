class AddAllUserRefToExecutive < ActiveRecord::Migration[7.0]
  def change
    add_reference :executives, :all_user, null: false, foreign_key: true
  end
end
