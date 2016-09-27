require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        :body => "Body"
      ),
      Document.create!(
        :body => "Body"
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", :text => "Body".to_s, :count => 2
  end
end
