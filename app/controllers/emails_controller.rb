class EmailsController < ApplicationController

	def index
		@emails = Email.all
	end


	def create
		@email = Email.new(object: Faker::Book.title, body: Faker::Book.title)

		respond_to do |format|
			if @email.save
		    format.html { redirect_to root_path }
		    format.js { }
		  else
		    format.html { redirect_to root_path }
		    format.js { }
		  end
		end
	end


	def show
		@email = Email.find(params[:id])


		respond_to do |format|
			format.html { redirect_to root_path }
		  format.js {}
		end

	end


	def destroy
    @email = Email.find(params[:id])
    @email.destroy
    puts "$"*60
		puts params
		puts "$"*60


    respond_to do |format|
		  format.html { redirect_to root_path }
		  format.js { }
		end
	end

end
