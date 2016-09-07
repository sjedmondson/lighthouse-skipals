class CreatePatrollers < ActiveRecord::Migration[5.0]
  def change
    create_table :patrollers do |t|
      t.references :destination, foreign_key: true
      t.boolean :on_shift
      t.string :name
      t.string :username
      t.string :password_hash

      t.timestamps
    end
  end
end
