require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  let(:valid_attributes) {
    { title: "Sample Todo", description: "This is a sample todo" }
  }

  let(:invalid_attributes) {
    { title: "", description: "" }
  }

  describe "GET #index" do
    it "returns a success response" do
      Todo.create! valid_attributes
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      todo = Todo.create! valid_attributes
      get :show, params: { id: todo.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Todo" do
        expect {
          post :create, params: { todo: valid_attributes }
        }.to change(Todo, :count).by(1)
      end

      it "redirects to the created todo" do
        post :create, params: { todo: valid_attributes }
        expect(response).to redirect_to(Todo.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { todo: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end
end
