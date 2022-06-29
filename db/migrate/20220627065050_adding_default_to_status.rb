class AddingDefaultToStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :todos, :status, :bool, default: false
  end
end
