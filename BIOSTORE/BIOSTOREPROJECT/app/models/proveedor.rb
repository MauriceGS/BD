class Proveedor < ActiveRecord::Base
	has_many :productos 
	
	has_many :areas

	validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
