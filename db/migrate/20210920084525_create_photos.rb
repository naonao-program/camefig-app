class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :genre, null:false
      t.float :f_number, null:false
      t.string :shutter_speed, null:false
      t.integer :iso, null:false
      t.integer :month
      t.integer :time, null:false
      t.text :tips
      t.text :hashtag
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :camera_name
      t.string :lens_name
      t.text :accessories
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
