class RemoveHtmlFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :html, :string
  end
end
