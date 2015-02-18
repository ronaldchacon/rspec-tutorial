describe WelcomeController do
  describe "GET #index" do
    it "renders the :index template" do
      # setup
      # exercise
      get :index
      # verify
      expect(response).to render_template :index
      # teardown
    end
  end
end