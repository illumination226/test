class CreateSurveys < ActiveRecord::Migration
  def self.up
    create_table :surveys do |t|
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4
      t.string :question5

      t.timestamps
    end
  end

  def self.down
    drop_table :surveys
  end
end
