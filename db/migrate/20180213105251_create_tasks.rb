class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :detail

      t.timestamps
    end
  end
end


class AddCompletedToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :completed, :boolean, default: false
  end
end
