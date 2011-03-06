class RemoveQuestion7ToSurvey < ActiveRecord::Migration
  def self.up
    remove_column :surveys, :question7
  end

  def self.down
    add_column :surveys, :question7, :text
  end
end
