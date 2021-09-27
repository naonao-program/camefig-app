class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  enum month:{
    "---":0,
    "1月":1,"2月":2,"3月":3,"4月":4,"5月":5,"6月":6,"7月":7,
    "8月":8,"9月":9,"10月":10,"11月":11,"12月":12
  }

  enum time: {
    "----":0,
    "6時":1,"7時":2,"8時":3,"9時":4,"10時":5,"11時":6,"12時":7,
    "13時":8,"14時":9,"15時":10,"16時":11,"17時":12,"18時":13,
    "19時":14,"20時":15,"21時":16,"22時":17,"23時":18,"24時":19,
    "1時":20,"2時":21,"3時":22,"24時":23,"5時":24
  }

  with_options presence: true do
    validates :genre
    validates :f_number
    validates :shutter_speed
    validates :iso
    validates :month, numericality: {greater_than: 0}
    validates :time, numericality: {greater_than: 0}
  end
end
