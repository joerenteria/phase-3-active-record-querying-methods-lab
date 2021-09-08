class FixShows < ActiveRecord::Migration[6.1]
  def change
    change_table :shows do |t|
      t.remove :removed_shows_column, :shows
    end
  end
end
