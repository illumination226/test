class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :user
      t.string :title
      t.text :content
      t.post_id :integer
      t.announcement_id :integer
      t.page_id :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
