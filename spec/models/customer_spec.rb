require 'spec_helper'

describe Customer do
  let(:customer) { FactoryGirl.build(:customer) }
  subject { customer }

  it "should be valid and save" do
    customer.should be_valid
    customer.save.should be_true
  end

  it "should have errors if invalid" do
    required_fields = [:name, :quantity, :tags]
    required_fields.each { |field| customer[field] = nil }
    customer.should_not be_valid
    required_fields.each { |field| customer.errors.has_key?(field).should be_true }
  end
  
end
