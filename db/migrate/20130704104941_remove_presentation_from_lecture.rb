class RemovePresentationFromLecture < ActiveRecord::Migration
  def change
    remove_column :lectures, :presentation, :string
  end
end
