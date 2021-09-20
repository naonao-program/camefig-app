class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.decimal :f_number, null:false
      t.string :shutter_speed, null:false
      t.integer :iso, null:false
      t.integer :month, null:false
      t.integer :time
      t.string :genre
      t.string :camera_name
      t.string :lens_name
      t.text :accessories
      t.timestamps
    end
  end
end
