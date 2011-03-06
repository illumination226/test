class AddQuestion7ToSurvey < ActiveRecord::Migration
  def self.up
    add_column :surveys, :question7, :text
  end

  def self.down
    remove_column :surveys, :question7
  end
end
