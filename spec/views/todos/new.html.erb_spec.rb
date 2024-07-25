require 'rails_helper'

RSpec.describe "todos/new.html.erb", type: :view do
  it "displays the new todo form" do
    assign(:todo, Todo.new)
    render
    expect(rendered).to have_selector('form[action="/todos"][method="post"]')
  end
end