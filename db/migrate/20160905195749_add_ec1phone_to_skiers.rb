class AddEc1phoneToSkiers < ActiveRecord::Migration[5.0]
  def change
    add_column :skiers, :ec1phone, :string
  end
end
