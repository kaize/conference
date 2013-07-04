class AddPresentationToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :presentation, :string
  end
end
