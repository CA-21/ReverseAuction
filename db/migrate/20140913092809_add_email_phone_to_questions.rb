class AddEmailPhoneToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :city, :string
    add_column :questions, :email, :string
    add_column :questions, :phone, :string
  end
end
