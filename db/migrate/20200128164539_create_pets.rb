class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.string :size
      t.date   :birthday_date

      t.timestamps
    end
  end
end
