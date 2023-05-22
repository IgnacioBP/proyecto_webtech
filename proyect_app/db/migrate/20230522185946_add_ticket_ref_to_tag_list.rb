class AddTicketRefToTagList < ActiveRecord::Migration[7.0]
  def change
    add_reference :tag_lists, :ticket, null: false, foreign_key: true
  end
end
