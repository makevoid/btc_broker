require_relative "spec_helper"

def create_users
  @user  = User.create username: "Ali"
end

describe "BtcBroker" do

  before :all do
    create_users
  end

  xit "logs user (Ali)" do
    # post "/login"
    get "/"
    body.should =~ /Ali/
  end

  xit "makes a deposit" do
    post "/deposits"
    Deposit.count.should == 1
  end

end