class OffersController < ApplicationController
   def index
      @offers = Offer.all
   end

   def show
      @offer = Offer.find(params[:id])
   end

   def new
      @offer = Offer.new
      @categories = Category.all
   end

   def offer_params
      params.require(:offers).permit(:title, :category_id, :zipcode, :district, :description, :term)
   end

   def create
      @offer = Offer.new(offer_params)

      if @offer.save
         redirect_to :action => 'index'
      else
         @categories = Category.all
         render :action => 'new'
      end
   end

   def edit
      @offer = Offer.find(params[:id])
      @categories = Category.all
   end

   def offer_param
      params.require(:offer).permit(:title, :category_id, :zipcode, :district, :description)
   end

   def update
      @offer = Offer.find(params[:id])

      if @offer.update_attributes(offer_param)
         redirect_to :action => 'show', :id => @offer
      else
         @categories = Category.all
         render :action => 'edit'
      end
   end

   def destroy
      Offer.find(params[:id]).destroy
      redirect_to :action => 'index'
   end

   def show_categories
      @category = Category.find(params[:id])
   end

end