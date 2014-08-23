class CreatePregnancies < ActiveRecord::Migration
  def change
    create_table :pregnancies do |t|
      t.boolean :artificial_insemination
      t.date :riding_date
      t.date :expected_birth_date
      t.date :birth_date

      t.timestamps
    end
  end
end
