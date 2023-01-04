require 'rails_helper' # rubocop:todo Layout/EndOfLine

RSpec.describe '/clusters', type: :request do
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Cluster.create! valid_attributes
      get clusters_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      cluster = Cluster.create! valid_attributes
      get cluster_url(cluster)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_cluster_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      cluster = Cluster.create! valid_attributes
      get edit_cluster_url(cluster)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Cluster' do
        expect do
          post clusters_url, params: { cluster: valid_attributes }
        end.to change(Cluster, :count).by(1)
      end

      it 'redirects to the created cluster' do
        post clusters_url, params: { cluster: valid_attributes }
        expect(response).to redirect_to(cluster_url(Cluster.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Cluster' do
        expect do
          post clusters_url, params: { cluster: invalid_attributes }
        end.to change(Cluster, :count).by(0)
      end

      it 'renders a response with 422 status' do
        post clusters_url, params: { cluster: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested cluster' do
        cluster = Cluster.create! valid_attributes
        patch cluster_url(cluster), params: { cluster: new_attributes }
        cluster.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the cluster' do
        cluster = Cluster.create! valid_attributes
        patch cluster_url(cluster), params: { cluster: new_attributes }
        cluster.reload
        expect(response).to redirect_to(cluster_url(cluster))
      end
    end

    context 'with invalid parameters' do
      it 'renders a response with 422 status' do
        cluster = Cluster.create! valid_attributes
        patch cluster_url(cluster), params: { cluster: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested cluster' do
      cluster = Cluster.create! valid_attributes
      expect do
        delete cluster_url(cluster)
      end.to change(Cluster, :count).by(-1)
    end

    it 'redirects to the clusters list' do
      cluster = Cluster.create! valid_attributes
      delete cluster_url(cluster)
      expect(response).to redirect_to(clusters_url)
    end
  end
end
