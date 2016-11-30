class Book < ApplicationRecord
	belongs_to :user
	
	has_attached_file :book_img, styles: { book_index: "300x300>", book_show: "325x475>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_img, content_type: /\Aimage\/.*\z/

  has_attached_file :book_file, url: "/:class/:attachment/:id/:basename.:extension", path: ":rails_root/public/:class/:attachment/:id/:basename.:extension"
  validates_attachment :book_file, :content_type => { :content_type => "application/pdf" }
 
  validates :title, length: { in: 4..40 }
  validates :description, length: { in: 100..250 }
  validates :author, presence: true
  validates :book_img, :book_file, presence: true


end
