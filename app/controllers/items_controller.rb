class ItemsController < ApplicationController
  before_action :set_items
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET bills/1/items
  def index
    @items = @bill.items
  end

  # GET bills/1/items/1
  def show
  end

  # GET bills/1/items/new
  def new
    @item = @bill.items.build
  end

  # GET bills/1/items/1/edit
  def edit
  end

  # POST bills/1/items
  def create
    @item = @bill.items.build(item_params)

    if @item.save
      redirect_to(@bill, notice: 'Item was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT bills/1/items/1
  def update
    if @item.update_attributes(item_params)
      redirect_to(@bill, notice: 'Item was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE bills/1/items/1
  def destroy
    @item.destroy

    redirect_to bill_url(@bill)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_items
      @bill = Bill.find(params[:bill_id])
    end

    def set_item
      @item = @bill.items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :description, :price)
    end
end
