class CreateDoors < ActiveRecord::Migration[6.0]
  def change
    create_table :doors do |t|
      t.datetime :locked_at

      t.timestamps
    end
  end
end
