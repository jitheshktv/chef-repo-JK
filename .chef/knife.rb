# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jitheshktv"
client_key               "#{current_dir}/jitheshktv.pem"
validation_client_name   "jithus_citi-validator"
validation_key           "#{current_dir}/jithus_citi-validator.pem"
chef_server_url          "https://api.chef.io/organizations/jithus_citi"
cookbook_path            ["#{current_dir}/../cookbooks"]
