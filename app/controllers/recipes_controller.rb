require 'open-uri'
require 'net/http'

class RecipesController < ApplicationController
  

  def index
    @likes = Like.all.where(user: current_user).reverse
  end

  def new
    @keyword = params[:keyword]

    reponse = JSON.parse(Net::HTTP.get(URI.parse("http://food2fork.com/api/search?key=91c70198fb6803137c6990f067c53c0d&q=#{@keyword}")))
    p @options

    @saved = Meal.all.where(user: current_user).reverse

    # recipe_ids = Like.all.where(user: current_user).pluck(:recipe_id)

    @options = response["recipe"]


    # @results = response["recipes"]
    # @results.each do |recipe|
    #   if recipe_ids.include? recipe["recipe_id"]
    #     results.pop(recipe)
    #   end
    # end   


  end



  def create
  end

  def show
    @id = params[:id]
    @recipe = JSON.parse(Net::HTTP.get(URI.parse("http://food2fork.com/api/get?key=91c70198fb6803137c6990f067c53c0d&rId=#{@id}")))
    puts @recipe
  end

  def edit
  end

  def update
  end

  def delete
  end


end
