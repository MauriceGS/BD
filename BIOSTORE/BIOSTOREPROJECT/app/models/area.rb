class Area < ActiveRecord::Base
	has_many :empleados, dependent: :restrict_with_exception
	validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates_presence_of :nombre, :descripcion, :total_empleados, :proveedor_id
    validates_numericality_of :total_empleados, :greater_than => 0

	
	belongs_to :proveedors


end	


