class RemoveReadmeFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :readme, :string
  end
end
