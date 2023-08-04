
class Person < ApplicationRecord

    validates :name, presence: true

    validates :email, uniqueness: true, on: :account_setup
end
