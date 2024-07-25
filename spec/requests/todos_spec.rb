require 'rails_helper'

RSpec.describe "Todos", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get todos_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show/:id" do
    it "returns http success" do
      todo = FactoryBot.create(:todo)
      get todo_path(todo)
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get new_todo_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "creates a new todo and returns http success" do
      todo_params = { todo: { title: "New Todo", description: "New Todo description" } }
      post todos_path, params: todo_params
      expect(response).to have_http_status(:redirect) # Assuming it redirects after creating
      follow_redirect!
      expect(response).to have_http_status(:success)
    end
  end
end
