describe User do
  before(:each) {@user = FactoryGirl.create(:user)}

  subject {@user}

  it {should be_valid}

  it ".all returns a list of users" do
    expect(User.all.count).not_to eq 0
  end

  describe "when email is blank" do
    before {@user.email = " "}
    it { should_not be_valid }
  end
end