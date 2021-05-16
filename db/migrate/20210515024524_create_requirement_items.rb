class CreateRequirementItems < ActiveRecord::Migration[6.1]
  def change
    create_table :requirement_items do |t|
      t.references :license_requirement, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
