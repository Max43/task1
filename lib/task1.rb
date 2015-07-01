require 'lotus/model'
Dir["#{ __dir__ }/task1/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/task1_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/task1_development.sqlite3'
  #    adapter type: :sql, uri: 'postgres://localhost/task1_development'
  #    adapter type: :sql, uri: 'mysql://localhost/task1_development'
  #
  adapter type: :sql, uri: ENV['TASK1_DATABASE_URL']

  ##
  # Migrations
  #
  migrations 'db/migrations'
  schema     'db/schema.sql'

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  # You can specify mapping file to load with:
  #
  # mapping "#{__dir__}/config/mapping"
  #
  # Alternatively, you can use a block syntax like the following:
  #
  mapping do
    collection :orders do
     entity     Order
     repository OrderRepository

     attribute :id,           Integer
     attribute :name,         String
     attribute :quotation,    String
     attribute :company_name, String
     attribute :email,        String
     attribute :url,          String
     attribute :address,      String
     attribute :city,         String
     attribute :state,        String
     attribute :zip,          String
     attribute :phone_number, String
   end
  end
end.load!
