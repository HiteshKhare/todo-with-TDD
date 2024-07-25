require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "is valid with valid attributes" do
    todo = Todo.new(title: "Sample Todo", description: "This is a sample todo")
    expect(todo).to be_valid
  end

  it "is not valid without a title" do
    todo = Todo.new(description: "This is a sample todo")
    expect(todo).to_not be_valid
  end

  it "is not valid without a description" do
    todo = Todo.new(title: "Sample Todo")
    expect(todo).to_not be_valid
  end
end