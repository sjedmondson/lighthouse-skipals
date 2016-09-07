class AddEc2phoneToSkiers < ActiveRecord::Migration[5.0]
  def change
    add_column :skiers, :ec2phone, :string
  end
end
