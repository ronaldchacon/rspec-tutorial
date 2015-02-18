describe User do
  before(:each) {@user = User.new(email: "user@example.com")}

  subject(@user)

  it {should be_valid}

  describe "when email is blank" do
    before {@user.email = " "}
    it { should_not be_valid }
  end
end