class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :readme
      t.string :html

      t.timestamps
    end
  end
end
