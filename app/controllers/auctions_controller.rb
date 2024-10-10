class AuctionsController < ApplicationController
  before_action :set_auction, only: %i[ show edit update destroy ]

  # GET /auctions or /auctions.json
  def index
    @auctions = Auction.all
  end

  def list_results
    @auctions = Auction.category.idall
  end

  # GET /auctions/1 or /auctions/1.json
  def show
  end

  # GET /auctions/1 or /auctions/1.json
  def ah_menu
  end

  # GET /auctions/new
  def new
    @auction = Auction.new
  end

  # GET /auctions/1/edit
  def edit
  end

  # POST /auctions or /auctions.json
  def create
    @auction = Auction.new(auction_params)

    respond_to do |format|
      if @auction.save
        format.html { redirect_to auctions_url, notice: "Subasta creada exitosamente" }
        format.json { render :show, status: :created, location: @auction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auctions/1 or /auctions/1.json
  def update
    respond_to do |format|
      if @auction.update(auction_params)
        format.html { redirect_to auction_url(@auction), notice: "Auction was successfully updated." }
        format.json { render :show, status: :ok, location: @auction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auctions/1 or /auctions/1.json
  def destroy
    @auction.destroy

    respond_to do |format|
      format.html { redirect_to auctions_url, notice: "Auction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction
      @auction = Auction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def auction_params
      params.require(:auction).permit(:user_id,:category_id,:name, :category, :description, :type, :dimensions, :weight, :image, :image_data, :image_url, :condition, :quantity, :manufacturer_country, :initial_bid, :current_bid, :sold_bid, :comments, :expiration_date)
    end
end
