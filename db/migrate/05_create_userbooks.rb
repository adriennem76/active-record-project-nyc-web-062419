class CreateUserbooks < ActiveRecord::Migration[4.2]
    def change
        create_table :userbooks do |t|
            t.string :name
            t.integer :book_id
            t.integer :user_id
            t.datetime :due_date
            t.boolean :returned
        end
    end
end