require 'rails_helper'

RSpec.describe "inproceedings/show", type: :view do
  before(:each) do
    @inproceeding = assign(:inproceeding, Inproceeding.create!(
      :author => "",
      :title => "",
      :year => "",
      :booktitle => "Booktitle"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Booktitle/)
  end
end
