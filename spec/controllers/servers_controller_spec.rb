require 'spec_helper'

describe ServersController do

  it "should not let guest create server" do
    @server = Server.new
  end
  
end