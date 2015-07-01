module Web::Controllers::Orders
  class Create
    include Web::Action

     params do
	     param :name 
	     param :quotation 
	     param :company_name
	     param :email
	     param :url
	     param :address   
	     param :city    
	     param :state     
	     param :zip      
	     param :phone_number
    end


    def call(params)
    	@order = OrderRepository.create(Order.new(params))
    end
  end
end
