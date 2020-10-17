class CreateInitialModels < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.text :description
      t.timestamps
    end

    create_table :recipes do |t|
      t.string :title, null: false
      t.string :mixologist, null: false
      t.text :description, null: false
      t.string :original_url
      t.belongs_to :ingredient, foreign_key: true
      t.timestamps
    end

    create_table :pours do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.datetime :prepared_at, null: false
      t.string :location, null: false
      t.timestamps
    end

    create_table :units do |t|
      t.string :name, null: false
      t.timestamps
    end

    create_table :ingredient_recipes do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :ingredient, null: false, foreign_key: true
      t.belongs_to :unit, foreign_key: true
      t.float :quantity
      t.text :description
      t.timestamps
    end
  end
end
