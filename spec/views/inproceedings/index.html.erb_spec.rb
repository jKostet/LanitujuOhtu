require 'rails_helper'

=begin
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

  it "renders a list of inproceedings" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Booktitle".to_s, :count => 2
  end
end
=end
