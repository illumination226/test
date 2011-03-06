class RemoveQuestion6ToSurvey < ActiveRecord::Migration
  def self.up
    remove_column :surveys, :question6
  end

  def self.down
    add_column :surveys, :question6, :text
  end
end
