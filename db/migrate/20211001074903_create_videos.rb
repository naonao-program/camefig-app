class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :video
      t.string :youtube_url
      t.integer :month, null:false
      t.string :fps, null:false
      t.text :tips, null:false
      t.string :camera_name
      t.string :lens_name
      t.string :accessories
      t.timestamps
    end
  end
end
