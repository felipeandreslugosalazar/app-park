class CreateAutos < ActiveRecord::Migration[6.0]
  def change
    create_table :autos do |t|
      t.string :plate
      t.string :time_enter
      t.string :time_exit
      t.string :time_range
      t.string :whitelist

      t.timestamps
    end
  end
end
