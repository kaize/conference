class AddStateToHall < ActiveRecord::Migration
  def change
    add_column :halls, :state, :string
  end
end
