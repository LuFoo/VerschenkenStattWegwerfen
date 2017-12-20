class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		@category = Category.new
	end

 	def show
    		@category = Category.find(params[:id])
  	end

	def new
		@category = Category.new
	end

	def edit
		@category = Category.find(params[:id])
	end

	def create
		@category = Category.new(category_params)

  		respond_to do |format|
    		if @category.save
      			format.html { redirect_to @category, notice: 'Category was successfully created.' }
      			format.js
      			format.json { render json: @category, status: :created, location: @category }
    		else
      			format.html { render action: "new" }
      			format.json { render json: @category.errors, status: :unprocessable_entity }
    		end
  		end
	end

	def update
	  @category = Category.find(params[:id])
	 
	  if @category.update(category_params)
	    redirect_to @category
	  else
	    render 'edit'
	  end
	end
	
	def destroy
		@category = Category.find(params[:id])
		@category.destroy

		redirect_to categories_path
	end


	def category_params
			params.require(:category).permit(:name)
	end
end