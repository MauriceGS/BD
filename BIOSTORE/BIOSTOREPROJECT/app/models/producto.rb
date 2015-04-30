class Producto < ActiveRecord::Base
	belongs_to :proveedor

validates :nombre, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
validates :marca, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
validates :cantidad, numericality: true

validates :precio, numericality: true  

module Category
    FootWear = 0
    Bags = 1
    Pants = 2
    Perfume = 3
    Accessories = 4
    TShirts = 5
    List = {
      FootWear => {
        text: 'Calzado'
      },
      Bags => {
        text: 'Bolsas'
      },
      Pants => {
        text: 'Pantalones'
      },
      Perfume => {
      	text: 'Perfume'
      },
      Accessories => {
      	text: 'Accesorios'
      },
      TShirts => {
      	text: 'Playeras'
      }
    }

    def self.keys
      @@keys ||= List.keys
    end

    def self.select_values
      List.map{ |key, val| [ val[:text], key ] }
    end
  end	

end
