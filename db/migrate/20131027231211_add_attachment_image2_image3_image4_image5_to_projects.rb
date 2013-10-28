class AddAttachmentImage2Image3Image4Image5ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :image2
      t.attachment :image3
      t.attachment :image4
      t.attachment :image5
    end
  end

  def self.down
    drop_attached_file :projects, :image2
    drop_attached_file :projects, :image3
    drop_attached_file :projects, :image4
    drop_attached_file :projects, :image5
  end
end
