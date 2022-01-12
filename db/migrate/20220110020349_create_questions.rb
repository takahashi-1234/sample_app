class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer:answer1
      t.integer:answer2
      t.integer:answer3
      t.integer:answer4
      t.integer:answer5
      t.integer:score
      t.timestamps
    end
  end
end
