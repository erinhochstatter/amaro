class CreateScoops < ActiveRecord::Migration[7.0]
  def change
    create_table :scoops do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.datetime :prepared_at, null: false
      t.timestamps
    end
  end
end


