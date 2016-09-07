class AddDestinationToDispatchers < ActiveRecord::Migration[5.0]
  def change
    add_reference :dispatchers, :destination, foreign_key: true
  end
end
