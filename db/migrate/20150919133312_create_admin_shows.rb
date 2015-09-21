class CreateAdminShows < ActiveRecord::Migration
  def change
    create_table :admin_shows do |t|
      t.string :local
      t.date :date
      t.string :time
      t.text :description
      t.integer :band_id

      t.timestamps null: false
    end
  end
end
