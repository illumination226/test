class AddQuestion6ToSurvey < ActiveRecord::Migration
  def self.up
    add_column :surveys, :question6, :text
  end

  def self.down
    remove_column :surveys, :question6
  end
end
