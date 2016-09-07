class CorrectForSecurePassword < ActiveRecord::Migration[5.0]
  def change
    rename_column :patrollers, :password_hash, :password_digest
    rename_column :skiers, :password_hash, :password_digest
  end
end
