class CustomerItemsController < ApplicationController
  def create
    CustomerItems.create(customer_id: params[:customer_id], item_id: params[:item_id])
    redirect_to "/customers/#{params[:customer_id]}"
  end
end