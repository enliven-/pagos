class InvoicesController < ApplicationController
  
  def index
    @customer = Customer.find(params[:customer_id])
    @invoices = @customer.invoices
  end
  
  def pay
    @invoice = Invoice.find(params[:id])
    @invoice.pay_up!
    redirect_to customer_invoices_path(@invoice.customer)
  end
  
  def create
    @invoice = Invoice.new(params[:invoice])
  end
    
end