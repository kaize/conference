class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :state
      t.integer :hall_id

      t.timestamps
    end
  end
end
