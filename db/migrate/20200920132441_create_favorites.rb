class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :movie_1
      t.string :movie_2
      t.string :movie_3
      t.string :movie_4
      t.string :movie_5
      t.string :movie_6
      t.string :movie_7
      t.string :movie_8
      t.string :movie_9
      t.string :movie_10
      t.string :actor_1
      t.string :actor_2
      t.string :actor_3
      t.string :actor_4
      t.string :actor_5
      t.string :director_1
      t.string :director_2
      t.string :director_3
      t.text :profile
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
