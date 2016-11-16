class Book < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :reviews

	has_attached_file :book_img, styles: { book_index: "300x300>", book_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/

  validates :title, length: { in: 4..100 }
  validates :description, length: { in: 10..650 }
  validates :author, presence: true

#
end
