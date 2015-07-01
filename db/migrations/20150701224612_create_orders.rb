Lotus::Model.migration do
  change do
  	create_table :orders do
  	primary_key :id
     column :name,                 String 
     column :quotation,            String 
     column :company_name,         String 
     column :email,                String 
     column :url,                  String
     column :address,              String
     column :city,                 String
     column :state,                String
     column :zip,                  String
     column :phone_number,         String
 	end
  end
end
