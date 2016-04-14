require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :author => "Author",
      :title => "Title",
      :publisher => "Publisher",
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Publisher/)
    expect(rendered).to match(/1/)
  end
end
