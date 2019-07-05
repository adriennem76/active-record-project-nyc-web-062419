class Userbook < ActiveRecord::Base
    has_many :books
    has_many :users
end