require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe '#create' do
    it 'display all movies' do
      get :index

      expect(response).to render_template(:index)
    end

    it 'renders the index page after create' do
      post :create, params: { movie: { title: 'abc', director: 'xyz12', rate: 3 } }

      expect(response).to render_template(:index)
    end
  end
end
