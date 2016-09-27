class AddCoverLetterAttachmentToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_attachment :documents, :cover_letter
  end
end
