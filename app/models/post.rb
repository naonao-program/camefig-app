class Post < ApplicationRecord
  mount_uploader :video, VideoUploader
  belongs_to :user

  enum month:{
    "---":0,
    "1月":1,"2月":2,"3月":3,"4月":4,"5月":5,"6月":6,"7月":7,
    "8月":8,"9月":9,"10月":10,"11月":11,"12月":12
  }
  with_options presence: true do
    validates :fps
    validates :tips
  end
  validates :video, presence: true, unless: :youtube_url
  validates :youtube_url, presence: true, unless: :video
end
