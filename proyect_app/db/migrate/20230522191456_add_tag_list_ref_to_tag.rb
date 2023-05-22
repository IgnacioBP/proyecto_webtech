class AddTagListRefToTag < ActiveRecord::Migration[7.0]
  def change
    add_reference :tags, :tag_list, null: false, foreign_key: true
  end
end
