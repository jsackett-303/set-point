class CreateThermostats < ActiveRecord::Migration
  def change
    create_table :thermostats do |t|
      t.string  :serial_number
      t.integer :set_point
      t.integer :location_id

      t.timestamps
    end
  end
end
