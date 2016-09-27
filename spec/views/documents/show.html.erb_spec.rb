require 'rails_helper'

RSpec.describe "documents/show", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :body => "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
  end
end
