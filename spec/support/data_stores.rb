ActiveRecord::Base.configurations = {'sqlite3' => {:adapter => 'sqlite3', :database => ':memory:'}}
ActiveRecord::Base.establish_connection(:sqlite3)

ActiveRecord::Base.logger = Logger.new(STDERR)
ActiveRecord::Base.logger.level = Logger::WARN

ActiveRecord::Migration.verbose = false
ActiveRecord::Schema.define(:version => 0) do
  create_table :addresses do |t|
    t.string  :line_1
    t.string  :line_2
    t.string  :city
    t.string  :state
    t.string  :zip_code
    t.string  :phone_number
  end
end

