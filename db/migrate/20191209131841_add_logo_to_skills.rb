class AddLogoToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :logo, :text
  end
end
