class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.text :tips, null:false
      t.integer :month, null:false
      t.string :youtube_url
      t.string :camera_name
      t.string :lens_name
      t.text :accessories
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
