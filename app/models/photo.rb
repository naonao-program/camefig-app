class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  enum month:{
    "---":0,
    "1月":1,"2月":2,"3月":3,"4月":4,"5月":5,"6月":6,"7月":7,
    "8月":8,"9月":9,"10月":10,"11月":11,"12月":12
  }
end
