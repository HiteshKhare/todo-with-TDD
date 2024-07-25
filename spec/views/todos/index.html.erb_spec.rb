require 'rails_helper'

RSpec.describe "todos/index.html.erb", type: :view do
  it "displays all the todos" do
    assign(:todos, [
      FactoryBot.create(:todo, title: "First Todo", description: "First Description"),
      FactoryBot.create(:todo, title: "Second Todo", description: "Second Description")
    ])

    render

    expect(rendered).to match /First Todo/
    expect(rendered).to match /Second Todo/
  end
end