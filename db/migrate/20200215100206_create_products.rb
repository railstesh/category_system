class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
