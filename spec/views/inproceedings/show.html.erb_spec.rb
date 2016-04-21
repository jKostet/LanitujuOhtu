require 'rails_helper'

RSpec.describe "inproceedings/show", type: :view do
  before(:each) do
    @inproceeding = assign(:inproceeding, Inproceeding.create!(
      :author => "Michael Jordan",
      :title => "Dunking",
      :year => "1992",
      :booktitle => "Booktitle"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Michael Jordan/)
    expect(rendered).to match(/Dunking/)
    expect(rendered).to match(/1992/)
    expect(rendered).to match(/Booktitle/)
  end
end
