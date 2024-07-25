require 'rails_helper'

RSpec.describe "todos/show.html.erb", type: :view do
  it "displays the todo details" do
    assign(:todo, Todo.create!(title: "test title", description: "test description"))
    render
    expect(rendered).to have_content("test title")
    expect(rendered).to have_content("test description")
  end
end