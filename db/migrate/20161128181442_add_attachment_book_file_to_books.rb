class AddAttachmentBookFileToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :book_file
    end
  end

  def self.down
    remove_attachment :books, :book_file
  end
end
