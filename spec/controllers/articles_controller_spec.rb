require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "controller tests" do
    before :each do
      FactoryGirl.create(:article)
      FactoryGirl.create(:inproceeding)
    end

  end



end
