class CreatePlaybooks < ActiveRecord::Migration[5.1]
  def change
    create_table :playbooks do |t|
      t.string :company
      t.string :name
      t.boolean :active, default: false
      t.float :price
      t.timestamps
    end
  end
end
