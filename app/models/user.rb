class User < ActiveRecord::Base
   has_many :books, through: :libraries 

   def check_out_book(book, due_date:)
    Userbook.create do |u|
        u.book_id = book.id
        u.user_id = self.id
        u.due_date = due_date
        u.returned = false
    end
   end

   def return_book(book)
        user_book = Userbook.find_by(book_id: book.id)
        user_book.returned = true
        user_book.save
   end
end