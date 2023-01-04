require 'rails_helper'

RSpec.describe "/associations", type: :request do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Association.create! valid_attributes
      get associations_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      association = Association.create! valid_attributes
      get association_url(association)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_association_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      association = Association.create! valid_attributes
      get edit_association_url(association)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Association" do
        expect {
          post associations_url, params: { association: valid_attributes }
        }.to change(Association, :count).by(1)
      end

      it "redirects to the created association" do
        post associations_url, params: { association: valid_attributes }
        expect(response).to redirect_to(association_url(Association.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Association" do
        expect {
          post associations_url, params: { association: invalid_attributes }
        }.to change(Association, :count).by(0)
      end

      it "renders a response with 422 status" do
        post associations_url, params: { association: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested association" do
        association = Association.create! valid_attributes
        patch association_url(association), params: { association: new_attributes }
        association.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the association" do
        association = Association.create! valid_attributes
        patch association_url(association), params: { association: new_attributes }
        association.reload
        expect(response).to redirect_to(association_url(association))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status" do
        association = Association.create! valid_attributes
        patch association_url(association), params: { association: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested association" do
      association = Association.create! valid_attributes
      expect {
        delete association_url(association)
      }.to change(Association, :count).by(-1)
    end

    it "redirects to the associations list" do
      association = Association.create! valid_attributes
      delete association_url(association)
      expect(response).to redirect_to(associations_url)
    end
  end
end
