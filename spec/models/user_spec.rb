require 'spec_helper'

describe User do

  it { should have_many(:comments) }
  it { should have_many(:followers) }
  it { should have_many(:servers).through(:followers) }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it "should be instantiable" do
    Server.new.should be
  end

end