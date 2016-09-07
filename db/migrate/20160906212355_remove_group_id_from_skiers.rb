class RemoveGroupIdFromSkiers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :skiers, :group
  end
end
