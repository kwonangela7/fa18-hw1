class ProductsController < ApplicationController

  # GET route that renders a form for users to create a new Product object with
  def new
    # No logic needed here. We're just rendering a template!
  end

  # GET route that renders a form for users to update an existing Product object with
  def edit
    # No logic needed here. We're just rendering a template!
  end

  # POST route to recieve info needed to create a Product.
  def create
    # YOUR CODE HERE
    # Receive the parameters in the `params` hash and create a new Product object!
  end

  # POST route to recieve info needed to update a Product object.
  def update
    # YOUR CODE HERE
    # Receive the parameters in the `params` hash and update the relevant Product object (if it exists!)
  end

  # GET route to render all the products
  def index
    # YOUR CODE HERE
    # Check out the view file for this action and see what you need to do here to make it work!
  end

end
