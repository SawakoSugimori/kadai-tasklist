class AddUserToTasks < ActiveRecord::Migration[5.2]
  def change
    execute 'DELETE FROM tasks;'
    add_reference :tasks, :user, foreign_key: true
  end
end
