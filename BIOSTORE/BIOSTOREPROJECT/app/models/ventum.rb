class Ventum < ActiveRecord::Base
	belongs_to :cliente

	after_save :comision

	validates :cantidad_productos, numericality: true
	validates :total, numericality: true

	def comision

		empleadoCom=Empleado.find(self.empleado_id)

		if empleadoCom.comision.present?
		empleadoCom.comision += self.total*0.10
		else
		empleadoCom.comision = 0
		empleadoCom.comision += self.total*0.10
		end

		empleadoCom.save
	end


end 
 