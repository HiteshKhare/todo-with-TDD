require 'rails_helper'

RSpec.describe "todos/create.html.erb", type: :view do
  it "displays the todo creation form" do
    # Your example code here
    assign(:todo, Todo.new)
    render
    expect(rendered).to have_selector('form[action="/todos"][method="post"]')
  end
end