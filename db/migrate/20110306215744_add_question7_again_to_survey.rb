class AddQuestion7AgainToSurvey < ActiveRecord::Migration
  def self.up
    add_column :surveys, :question7, :string
  end

  def self.down
    remove_column :surveys, :question7
  end
end
