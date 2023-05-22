class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :tittle
      t.string :rate
      t.text :description
      t.text :summary

      t.timestamps
    end
  end
end
