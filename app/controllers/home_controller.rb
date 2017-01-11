class HomeController < ShopifyApp::AuthenticatedController


  # Index shows:
  # Can we hardcode these in the database?

  # Total Amount Recovered Order.sum(:value)
  # http://api.rubyonrails.org/classes/ActiveRecord/Calculations.html

  # Average Order Size Order.average(:value)??
  # Repeat Customers -- this might be quite hard..
  # Campaign CTR
  #
  # There should be some kind of initializer that access & decorates a user model..

  def index

    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end
end
