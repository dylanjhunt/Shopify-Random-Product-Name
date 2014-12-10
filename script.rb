require 'shopify_api'
require 'yaml'
 
 
config = YAML.load_file("config.yml")
 
shop_url = "https://#{config['api_key']}:#{config['password']}@#{config['shop_name']}.myshopify.com/admin"
ShopifyAPI::Base.site = shop_url

letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]



50.times do

product_title = ""
	10.times do
  product_title = product_title + letters.sample
end

puts product_title

	new_product = ShopifyAPI::Product.new
	new_product.title = product_title
	new_product.product_type = "Snowboard"
	new_product.vendor = "Burton"
	new_product.save
end

