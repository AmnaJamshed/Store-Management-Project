class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
       t.integer :attachable_id
       t.string :attachable_type
       t.attachment :photo

      t.timestamps
    end
  end
end
