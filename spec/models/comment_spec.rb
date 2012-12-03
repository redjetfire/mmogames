require 'spec_helper'

describe Comment do

  it { should belong_to(:user) }
  it { should belong_to(:server) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:server_id) }

  it "should be instantiable" do
    Comment.new.should be
  end

end