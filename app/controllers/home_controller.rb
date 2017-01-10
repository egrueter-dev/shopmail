class HomeController < ShopifyApp::AuthenticatedController


  # Index shows:
  # Can we hardcode these in the database?

  # Total Amount Recovered Order.sum(:value)
  # http://api.rubyonrails.org/classes/ActiveRecord/Calculations.html

  # Average Order Size Order.average(:value)??
  # Repeat Customers -- this might be quite hard..
  # Campaign CTR


  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })


  end
end
