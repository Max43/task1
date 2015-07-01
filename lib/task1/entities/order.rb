class Order
  include Lotus::Entity
  attributes :name, :quotation, :company_name, :email, :url,
  			 :address,:city, :state, :zip, :phone_number
end
