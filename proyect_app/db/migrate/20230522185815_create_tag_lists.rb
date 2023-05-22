class CreateTagLists < ActiveRecord::Migration[7.0]
  def change
    create_table :tag_lists do |t|

      t.timestamps
    end
  end
end
