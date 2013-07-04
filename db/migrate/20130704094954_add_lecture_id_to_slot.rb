class AddLectureIdToSlot < ActiveRecord::Migration
  def change
    add_column :slots, :lecture_id, :integer
  end
end
