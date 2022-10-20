class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :flour
      t.integer :malt
      t.integer :water
      t.integer :brounextra

      t.timestamps
    end
  end
end
