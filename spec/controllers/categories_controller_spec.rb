require "rails_helper"
require 'spec_helper'

describe Category::CategoriesController, :type => :controller do
  let(:category) {FactoryGirl.create(:category)}
  let(:category_1) {FactoryGirl.create(:category)}
  let(:category_2) {FactoryGirl.create(:category)}


  describe "POST create" do

    it "should create category" do

     category_params = {
       category: {
         itemname: "Roti"
       }
     }

     post :create, category_params
     expect(Category.count).to  eq 1
   end
 end

 describe "GET index" do
  it "assigns all practice as @category" do
    get :index
    assigns(:categories).should eq([category_2, category_1])
  end
end

describe "GET show" do
  it "assigns the requested category as @category" do
    binding.pry
    get :show, {:id => category.to_param}
    expect(assigns(:category)).to eq (category)
  end
end


end