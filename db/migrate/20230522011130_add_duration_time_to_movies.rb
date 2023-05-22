class AddDurationTimeToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :duration_time, :integer
  end
end
