require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before(:each) do
      @category = Category.create!(name: "Trees")
      @product = Product.create!(
      name: "Red Maple",
      description: "Most common tree in North America",
      price: 2000,
      quantity: 3,
      category: @category)
    end

    it 'should have a name' do
      @product.name = "Red Maple"
      expect(@product).to be_present
    end
    it "should have valid a price" do
      @product.price = 2000 
      expect(@product).to be_present
    end
    it "should have a quantity" do
      @product.quantity = 3
      expect(@product).to be_present
    end
    it "should have a valid a category" do
      @product.category = @category
      expect(@product).to be_present
    end
  end
end

