class Book < ApplicationRecord
    validates :name, presence: true, length: {minimum: 2}
    validates :author, presence: true, length: {minimum: 3}
end
