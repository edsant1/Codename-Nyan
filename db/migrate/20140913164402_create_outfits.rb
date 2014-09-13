class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :name
      t.integer :occasion_id

      t.timestamps
    end
  end
end
