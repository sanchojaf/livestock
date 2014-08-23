class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :name
      t.date :date
      t.integer :value

      t.timestamps
    end
  end
end
