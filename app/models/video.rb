class Video < ApplicationRecord
  belongs_to :user
  has_one_attached :video
  enum month:{
    "---":0,
    "1月":1,"2月":2,"3月":3,"4月":4,"5月":5,"6月":6,"7月":7,
    "8月":8,"9月":9,"10月":10,"11月":11,"12月":12
  }

  with_options presence: true do
    validates :tips
    validates :month, numericality: {greater_than: 0}
    validates :image_or_youtube_url
  end
  
  validates :youtube_url, format: /\A#{URI::regexp(%w(http https www youtube com))}\z/

  private
  def image_or_youtube_url
    video.presence || youtube_url.presence
  end
end
