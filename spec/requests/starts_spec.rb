require 'rails_helper'

RSpec.describe "/starts", type: :request do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Start.create! valid_attributes
      get starts_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      start = Start.create! valid_attributes
      get start_url(start)
      expect(response).to be_successful
    end
  end 

  describe "GET /new" do
    it "renders a successful response" do
      get new_start_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      start = Start.create! valid_attributes
      get edit_start_url(start)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Start" do
        expect {
          post starts_url, params: { start: valid_attributes }
        }.to change(Start, :count).by(1)
      end

      it "redirects to the created start" do
        post starts_url, params: { start: valid_attributes }
        expect(response).to redirect_to(start_url(Start.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Charge" do
        expect {
          post starts_url, params: { start: invalid_attributes }
        }.to change(Start, :count).by(0)
      end

      it "renders a response with 422 status" do
        post starts_url, params: { start: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested charge" do
        start = Start.create! valid_attributes
        patch start_url(start), params: { start: new_attributes }
        start.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the charge" do
        start = Start.create! valid_attributes
        patch start_url(start), params: { start: new_attributes }
        start.reload
        expect(response).to redirect_to(start_url(start))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status" do
        start = Start.create! valid_attributes
        patch start_url(start), params: { start: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested charge" do
      start = Start.create! valid_attributes
      expect {
        delete start_url(start)
      }.to change(Start, :count).by(-1)
    end

    it "redirects to the charges list" do
      start = Start.create! valid_attributes
      delete start_url(start)
      expect(response).to redirect_to(starts_url)
    end
  end
end
