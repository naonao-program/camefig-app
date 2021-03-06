class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :video
      t.string :youtube_url
      t.string :fps
      t.text :tips
      t.string :camera_name
      t.string :lens_name
      t.string :accessories
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
