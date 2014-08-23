class CreatePeriodMilkProductions < ActiveRecord::Migration
  def change
    create_table :period_milk_productions do |t|
      t.date :date_first_milking
      t.references :livestock, index: true

      t.timestamps
    end
  end
end
