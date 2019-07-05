class AddCategoryIdToBook < ActiveRecord:: Migration[4.2]
    def change
        add_column :books, :category_id, :category
    end
end