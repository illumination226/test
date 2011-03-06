class AddQuestion6AgainToSurvey < ActiveRecord::Migration
  def self.up
    add_column :surveys, :question6, :string
  end

  def self.down
    remove_column :surveys, :question6
  end
end
