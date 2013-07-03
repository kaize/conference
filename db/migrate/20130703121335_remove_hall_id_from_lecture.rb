class RemoveHallIdFromLecture < ActiveRecord::Migration
  def change
    remove_column :lectures, :hall_id, :integer
  end
end
