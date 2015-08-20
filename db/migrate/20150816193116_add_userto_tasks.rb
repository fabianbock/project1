class AddUsertoTasks < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.references :user, index: true
    end
  end
end