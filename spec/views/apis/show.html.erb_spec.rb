require 'rails_helper'

RSpec.describe "apis/show", type: :view do
  before(:each) do
    @api = assign(:api, Api.create!(
      :uripath => "Uripath",
      :filepath => "Filepath"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uripath/)
    expect(rendered).to match(/Filepath/)
  end
end
