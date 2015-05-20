require 'rubygems'
require 'mysql2'



  gateway = Net::SSH::Gateway.new(
      'staging.bastion.sportlobster.com',
      'teddy'
  )
  port = gateway.open('127.0.0.1', 3306, 3307)

  client = Mysql2::Client.new(
      host: "staging.db.fanzone.sportlobster.com",
      username: 'sportlobster',
      password: 'secret',
      database: 'sportlobster',
      port: port
  )
  results = client.query("select * from oauth_token where client_id = 'sportlobster-api';")
  results.each do |row|
    p row
  end
  client.close






