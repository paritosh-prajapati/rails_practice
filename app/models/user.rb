class User < ApplicationRecord
    # validates :name, presence: true

    # validates :login, :email, presence: true

    # before_validation :ensure_login_has_a_value

    # private
    # def ensure_login_has_a_value
    #   if login.nil?
    #     self.login = email unless email.blank?
    #   end
    # end

    # before_create do
    #     self.name = login.capitalize if name.blank?
    # end

    # before_validation :normalize_name, on: :create


    # private
    # def normalize_name
    #   self.name = name.downcase.titleize
    # end


    # after_initialize do |user|
    #     puts "You have initialized an object!"
    # end
    
    # after_find do |user|
    #     puts "You have found an object!"
    # end

    # after_touch do |user|
    #     puts "You have touched an object"
    # end    


    has_many :articles, dependent: :destroy
end