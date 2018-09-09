class CreateNewsletters < ActiveRecord::Migration[5.1]
  def change
    create_table :newsletters do |t|
      t.string :email
      t.boolean :active
      t.timestamps
    end
  end
end
