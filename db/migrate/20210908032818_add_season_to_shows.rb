class AddSeasonToShows < ActiveRecord::Migration[6.1]
  def change
    change_table :shows do |t|
      t.string :season
      t.string :shows
    end
  end
end
