class CreateGs < ActiveRecord::Migration[5.2]
  def change
    create_table :gs do |t|
      t.string :people
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
