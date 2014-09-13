class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :content
      t.integer :estimated_fee
      t.string :estimated_time

      t.timestamps
    end
  end
end
