class OffersController < ApplicationController

	def index
		@offers = Offer.all
	end

 	def show
    		@offer = Offer.find(params[:id])
  	end

	def new
		@offer = Offer.new
	end

	def edit
		@offer = Offer.find(params[:id])
	end

	def create
		@offer = Offer.new(offer_params)

		if @offer.save
			redirect_to @offer
		else
			render 'new'
		end
	end

	def update
	  @offer = Offer.find(params[:id])
	 
	  if @offer.update(offer_params)
	    redirect_to @offer
	  else
	    render 'edit'
	  end
	end

	def destroy
      @offer = Offer.find(params[:id])
      @offer.destroy

      redirect_to offers_path
    end
	
	private
		def offer_params
			params.require(:offer).permit(:title, :category, :description, :zipcode)
	end
end
