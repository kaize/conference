class AddThesisToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :thesis, :string
  end
end
