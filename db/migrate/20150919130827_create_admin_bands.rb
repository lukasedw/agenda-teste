class CreateAdminBands < ActiveRecord::Migration
  def change
    create_table :admin_bands do |t|
      t.string :name
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
