class AuthorsController < ApplicationController
 
  def index

  end

  def new
    @countries = [['India', 1]];

    @states = [
          ['Andra Pradesh',1],
          ['Arunachal Pradesh',2],
          ['Assam',3],
          ['Bihar',4],
          ['Chhattisgarh',5],
          ['Goa',6],
          ['Gujarat',7],
          ['Haryana',8],
          ['Himachal Pradesh',9],
          ['Jammu and Kashmir',10],
          ['Jharkhand',11],
          ['Karnataka',12],
          ['Kerala',13],
          ['Madya Pradesh',14],
          ['Maharashtra',15],
          ['Manipur',16],
          ['Meghalaya',17],
          ['Mizoram',18],
          ['Nagaland',19],
          ['Orissa',20],
          ['Punjab',21],
          ['Rajasthan',22],
          ['Sikkim',23],
          ['Tamil Nadu',24],
          ['Telagana',25],
          ['Tripura',26],
          ['Uttaranchal',27],
          ['Uttar Pradesh',28],
          ['West Bengal',29]
      ];

  # @cities = {
  #   1: [],
  #   2: [],
  #   28:[['Kanpur', 1]],
  #   29:[]
  # }

  @cities = [['Kanpur', 1]];
  end

  def create
    @author = Author.new(save_author_params)
    if @author.save
      flash[:success] = "New Author Added Successfully"
    else
      flash[:error] = "New Author cannot be added"
    end
    redirect_to root_path
  end

  private
  def save_author_params
    params.require(:author).permit(:name, :address, :country, :state, :city, :pincode)
  end
end