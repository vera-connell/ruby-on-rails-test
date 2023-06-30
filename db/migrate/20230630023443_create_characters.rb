class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.integer :age

      t.timestamps
    end
  end
end
