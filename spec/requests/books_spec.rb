require "rails_helper"

describe 'Books API', type: :request do
    it 'returns all books' do
        FactoryBot.create(:book, name:"Book A", author:"Author A")
        FactoryBot.create(:book, name:"Book B", author:"Author B")

        get '/api/v1/books'

        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body).size).to eq(2)
    end
end
