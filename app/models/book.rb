class Book < ApplicationRecord
	belongs_to :user
	
	has_attached_file , styles: { book_index: "300x300>", book_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/

  validates :title, length: { in: 4..40 }
  validates :description, length: { in: 10..250 }
  validates :author, presence: true
  validates :book_img, presence: true

#
end
