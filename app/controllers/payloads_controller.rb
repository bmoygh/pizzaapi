class PayloadsController < ApplicationController
  before_action :set_payload, only: [:show, :update, :destroy]

  # GET /payloads
  def index
    @payloads = Payload.all.order("created_at DESC")

    # render json: @payloads
    # Render HTML view
    render :index
  end

  # GET /payloads/1
  def show
    render json: @payload
  end

  # POST /payloads
  def create
    @payload = Payload.new(payload_params)

    if @payload.save
      render json: @payload, status: :created, location: @payload
    else
      render json: @payload.errors, status: :unprocessable_entity
    end
  end

  def receive
    data = JSON.parse(request.body.read)
    Payload.create(event_data: data)
  end

  def order_update
    data = JSON.parse(request.body.read)
    Payload.create(event_type: "Order Update", event_data: data)
  end

  def order_validation
    data = JSON.parse(request.body.read)
    Payload.create(event_type: "Order Validation", event_data: data)
  end

  def delivery_update
    data = JSON.parse(request.body.read)
    Payload.create(event_type: "Delivery Update", event_data: data)
  end

  def merchant_pos_update
    data = JSON.parse(request.body.read)
    Payload.create(event_type: "Merchant Pos Update", event_data: data)
  end

  def menu_ingestion_update
    data = JSON.parse(request.body.read)
    Payload.create(event_type: "Menu Ingestion Update", event_data: data)
  end

  # PATCH/PUT /payloads/1
  def update
    if @payload.update(payload_params)
      render json: @payload
    else
      render json: @payload.errors, status: :unprocessable_entity
    end
  end

  # DELETE /payloads/1
  def destroy
    @payload.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payload
      @payload = Payload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payload_params
      params.fetch(:payload, {})
    end
end
