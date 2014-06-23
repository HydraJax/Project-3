require 'spec_helper'

describe EventsController do
  before :each do 
    user = User.create(:email => 'bill@kill.com', :password => '12345678', :password_confirmation => '12345678')
    sign_in user
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
    it "should have a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

 describe "get 'my_events" do 
  it "returns http success" do
    get 'my_events'
    response.should be_success
    end

  end
  
  describe "GET#show" do
      it 'assigns the requested event to @events' do
  end
      it 'renders the :show template' do
      event =Event.create(event_name: Forgery(:lorem_ipsum).words(2, :random =>true), description: Forgery(:lorem_ipsum).words(2, :random =>true),address: Forgery(:lorem_ipsum).words(2, :random =>true),date: 12, time: 12)
      id = event.id
      get :show, id: id
    end
  end
  
  # describe "GET#new" do
  #   it 'should make a new event'
  #   get :new, 

  # end



end
