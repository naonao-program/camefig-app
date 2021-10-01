class Video < ApplicationRecord
  mount_uploader :video, VideoUploader
  belongs_to :user
  mount_uploader :video, VideoUploader
  enum month:{
    "---":0,
    "1月":1,"2月":2,"3月":3,"4月":4,"5月":5,"6月":6,"7月":7,
    "8月":8,"9月":9,"10月":10,"11月":11,"12月":12
  }

  with_options presence: true do
    validates :month, numericality: {greater_than: 0}
    validates :fps
    validates :tips
    validates :image_or_youtube_url
  end
  
  validates :youtube_url, format: /\A#{URI::regexp(%w(http https www youtube com))}\z/

  private
  def image_or_youtube_url
    video.presence || youtube_url.presence
  end
end
