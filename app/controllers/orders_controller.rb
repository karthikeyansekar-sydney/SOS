class OrdersController < ApplicationController
    def create
    @employee = Employee.find(session[:user_id])
    @order = @employee.orders.create(order_params)
redirect_to root_path
end

def index
  @orders = Order.all
end

def show
 @employee = Employee.find(session[:user_id])
  @orders = Order.where((["employee_id = ?", session[:user_id]]))
end
def update
  @order = Order.find(params[:id])
  @order.status = params[:status]
  @order.save
  redirect_to orders_path
end

private
def order_params
  params.require(:order).permit(:item, :name, :projectname)
end
end
