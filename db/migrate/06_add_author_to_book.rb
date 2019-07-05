class AddAuthorToBook < ActiveRecord:: Migration[4.2]
    def change
        add_column :books, :author_id, :author
    end
end