class BookController < ApplicationController
	def add
		 @book = Book.all
	end

    def delete
    	 @book = Book.find(params[:id])
    end

      def destroy
    	 bk=Book.find(params[:id])
    	 bk.destroy

    	 redirect_to(action: 'list')
      end	
    	
    def edit
    	 @book = Book.find(params[:id])
    end 

    def update
    	 @book = Book.find(params[:id])
    	 
    	if @book.update_attributes(book_params)

    	  redirect_to(action: 'list')
    	else
    	  render('edit')
        end
    end

    def search
    	@book =Book.where(["name LIKE ?","%#{params[:search]} %"])
    end
 
         #@book = Book.new(params[:id])
        #if @book.search (params.require(:books).permit(:name,:author,:price))
         #redirect_to(action: 'show')

    	#if @book.search_attributes(book_params)

    		#redirect_to(action: 'show')
    	#else
    	 #   render( 'search')
    	#end
    



    def save
    	@book = Book.all
    end

    def list
	   @books= Book.all
    end	

    def show
	   @book = Book.find(params[:id])
    end

    def new
    	@book = Book.new
    end

    def create
    	@book = Book.new(book_params)
    	if @book.save
    		redirect_to(action: 'list')
    	else
    		flash[:notice] = "Error: Recorde not created"
    		render(action: 'new')
    	end

    end


    def book_params
	    params.require(:books).permit(:name,:author,:price)
    end
end

