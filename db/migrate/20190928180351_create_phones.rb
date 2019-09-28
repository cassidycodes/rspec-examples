class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.datetime :locked_at

      t.timestamps
    end
  end
end
