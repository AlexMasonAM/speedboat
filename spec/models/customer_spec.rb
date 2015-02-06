require 'rails_helper'

RSpec.describe Customer, :type => :model do
  
  it "has a valid factory" do
    customer = FactoryGirl.create(:customer)
    expect(customer).to be_valid
  end

  it "has a valid customer with_speedboats factory" do
    customer = FactoryGirl.create(:customer_with_speedboats)
    expect(customer).to be_valid
  end

  it "should create a customer with speedboats using customer_with_speedboats" do
    customer = FactoryGirl.create(:customer_with_speedboats)
    expect(customer.speedboats.present?).to eq(true)
    expect(customer.speedboats.count).to eq(10)
  end

  it "should create a customer with a specific number of speedboats" do
    customer = FactoryGirl.create(:customer_with_speedboats, boat_count: 2)
    expect(customer.speedboats.count).to eq(2)
  end

  it "has many sale reciepts" do
    customer = FactoryGirl.create(:customer)
    FactoryGirl.create_list(:sale_reciept, 20, customer: customer)
    expect(customer.sale_reciepts.count).to eq(20)
  end  


end
