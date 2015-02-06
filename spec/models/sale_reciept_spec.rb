require 'rails_helper'

RSpec.describe SaleReciept, :type => :model do
  let(:sale_reciept){FactoryGirl.create(:sale_reciept)}
    
    it "has a valid factory" do
    expect(sale_reciept).to be_valid
  end
end
