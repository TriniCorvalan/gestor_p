class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.date :starts_on
      t.date :finish_on
      t.integer :status

      t.timestamps
    end
  end
end
