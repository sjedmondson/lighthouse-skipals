class CreateSkiers < ActiveRecord::Migration[5.0]
  def change
    create_table :skiers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_hash
      t.string :ec1
      t.string :ec2
      t.integer :current_checkin_id
      t.references :group, foreign_key: true
      t.string :username
      t.string :profile_picture
      t.string :phone

      t.timestamps
    end
  end
end
