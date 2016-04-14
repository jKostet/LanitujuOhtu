require 'rails_helper'

RSpec.describe "inproceedings/new", type: :view do
  before(:each) do
    assign(:inproceeding, Inproceeding.new(
      :author => "",
      :title => "",
      :year => "",
      :booktitle => "MyString"
    ))
  end

  it "renders new inproceeding form" do
    render

    assert_select "form[action=?][method=?]", inproceedings_path, "post" do

      assert_select "input#inproceeding_author[name=?]", "inproceeding[author]"

      assert_select "input#inproceeding_title[name=?]", "inproceeding[title]"

      assert_select "input#inproceeding_year[name=?]", "inproceeding[year]"

      assert_select "input#inproceeding_booktitle[name=?]", "inproceeding[booktitle]"
    end
  end
end
