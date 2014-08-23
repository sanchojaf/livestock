class CreateLivestocks < ActiveRecord::Migration
  def change
    create_table :livestocks do |t|
      t.string :name
      t.date :day_of_birth
      t.string :gender

      t.timestamps
    end
  end
end
