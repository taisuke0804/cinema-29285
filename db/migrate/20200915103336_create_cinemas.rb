class CreateCinemas < ActiveRecord::Migration[6.0]
  def change
    create_table :cinemas do |t|
      t.string :title, null: false
      t.integer :score, null: false
      t.integer :spoiler, null: false
      t.integer :genre, null: false
      t.text :review, null: false
      t.integer :appreciation, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
