class Cliente < ActiveRecord::Base
	has_many :ventas 
		validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

end
