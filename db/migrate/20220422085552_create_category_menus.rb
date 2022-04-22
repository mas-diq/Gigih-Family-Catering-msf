class CreateCategoryMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :category_menus do |t|
      t.string :category_menu_id
      t.string :menu_id
      t.string :category_id

      t.timestamps
    end
  end
end
