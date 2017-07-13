class CustomersController < ApplicationController
  before_action :set_customers
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET bills/1/customers
  def index
    @customers = @bill.customers
  end

  # GET bills/1/customers/1
  def show
  end

  # GET bills/1/customers/new
  def new
    @customer = @bill.customers.build
  end

  # GET bills/1/customers/1/edit
  def edit
  end

  # POST bills/1/customers
  def create
    @customer = @bill.customers.build(customer_params)

    if @customer.save
      redirect_to(@bill, notice: 'customer was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT bills/1/customers/1
  def update
    if @customer.update_attributes(customer_params)
      redirect_to(@bill, notice: 'customer was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE bills/1/customers/1
  def destroy
    @customer.destroy

    redirect_to bill_url(@bill)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customers
      @bill = Bill.find(params[:bill_id])
    end

    def set_customer
      @customer = @bill.customers.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_params
      params.require(:customer).permit(:name, :address1, :address2, :city, :zip, :phone)
    end
end
