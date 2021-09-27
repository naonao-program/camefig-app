class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :genre, null:false
      t.float :f_number, null:false
      t.string :shutter_speed, null:false
      t.integer :iso, null:false
      t.integer :month, null:false
      t.integer :time
      t.text :tips
      t.string :camera_name
      t.string :lens_name
      t.text :accessories
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
