class AddAdminkaIdToAttachment < ActiveRecord::Migration
  def change
    add_column :attachments, :adminka_id, :integer
    add_index :attachments, :adminka_id
  end
end
