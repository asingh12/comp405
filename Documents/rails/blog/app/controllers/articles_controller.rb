class ArticlesController < ApplicationController

	def new
		@article=Article.new
	end

def edit
	@articles= Aricle.find(params[:id])
end
	def create
		render plain: params [:article].inspect
	end

	def show
		@articles= Aricle.find(params[:id])
	end

	def index
		@aricles=Article.all
	end

	private

	def articleparams
		params.require
	end