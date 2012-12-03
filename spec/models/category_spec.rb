require 'spec_helper'

describe Category do

  before (:each) do
    @category = Category.new
  end

  it { should have_many(:servers) }

  it "should be instantiable" do
    Category.new.should be
  end

  it "should require name" do
    @category.name = "JetFire"
    @category.should be_valid
  end

end