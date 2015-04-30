class Empleado < ActiveRecord::Base
	belongs_to :area
	before_save :comision_to_cero, :if => :new_record?

	validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }


	def comision_to_cero
		self.comision = 0
	end
end
