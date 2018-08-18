class AddAuthorToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :author, :string
  end
end
