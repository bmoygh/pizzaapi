class MerchantsController < ApplicationController
  before_action :set_merchant, only: [:show, :update, :destroy]

  # GET /merchants
  def index
    @merchants = Merchant.all
    @client = Client.all
    render json: @client[0]
  end

  # GET /merchants/1
  def show
    render json: @merchant, serializer: MerchantSingularSerializer
  end

  # POST /merchants
  def create
    @merchant = Merchant.new(merchant_params)

    if @merchant.save
      render json: @merchant, status: :created, location: @merchant
    else
      render json: @merchant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /merchants/1
  def update
    if @merchant.update(merchant_params)
      render json: @merchant
    else
      render json: @merchant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /merchants/1
  def destroy
    @merchant.destroy
  end

  def secret_menu
    render json: File.read("#{Rails.root}/public/order_payload.json")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merchant
      @merchant = Merchant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def merchant_params
      params.require(:merchant).permit(:client_id, :name)
    end
end
