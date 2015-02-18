describe UserMailer do
  describe "#send_email" do
    before(:each) do
      @user = FactoryGirl.create(:user)
      UserMailer.send_email(@user).deliver
    end
    it 'sends an email' do
      expect(ActionMailer::Base.deliveries.count).to eq 1
    end
    it 'sends an email to the correct recipient' do
      expect(open_last_email).to be_delivered_to @user.email
    end
    it 'sends an email from the correct sender' do
      expect(open_last_email).to be_delivered_from 'sender@example.com'
    end
    it 'sends an email with the correct subject' do
      expect(open_last_email).to have_subject 'You Have Mail'
    end
  end
end