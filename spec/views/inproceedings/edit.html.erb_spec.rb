require 'rails_helper'

RSpec.describe "inproceedings/edit", type: :view do
  before(:each) do
    @inproceeding = assign(:inproceeding, Inproceeding.create!(
      :author => "Michael Jordan",
      :title => "Dunking",
      :year => "1992",
      :booktitle => "MyString"
    ))
  end

  it "renders the edit inproceeding form" do
    render

    assert_select "form[action=?][method=?]", inproceeding_path(@inproceeding), "post" do

      assert_select "input#inproceeding_author[name=?]", "inproceeding[author]"

      assert_select "input#inproceeding_title[name=?]", "inproceeding[title]"

      assert_select "input#inproceeding_year[name=?]", "inproceeding[year]"

      assert_select "input#inproceeding_booktitle[name=?]", "inproceeding[booktitle]"
    end
  end
end
