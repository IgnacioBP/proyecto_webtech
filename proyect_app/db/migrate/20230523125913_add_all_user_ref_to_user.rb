class AddAllUserRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :all_user, null: false, foreign_key: true
  end
end
