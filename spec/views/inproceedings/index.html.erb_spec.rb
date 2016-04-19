require 'rails_helper'


RSpec.describe "inproceedings/index", type: :view do
  before(:each) do
    assign(:inproceedings, [
      Inproceeding.create!(
        :author => "",
        :title => "",
        :year => "",
        :booktitle => "Booktitle"
      ),
      Inproceeding.create!(
        :author => "",
        :title => "",
        :year => "",
        :booktitle => "Booktitle"
      )
    ])
  end

end
