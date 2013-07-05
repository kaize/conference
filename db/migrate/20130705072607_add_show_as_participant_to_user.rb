class AddShowAsParticipantToUser < ActiveRecord::Migration
  def change
    add_column :users, :show_as_participant, :boolean
  end
end
