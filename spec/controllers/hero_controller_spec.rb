require 'rails_helper'

RSpec.describe HeroController, :type => :controller do
    context "GET #index" do
        it "has a 200 status code" do
            get :index
            expect(response).to have_http_status(200)
        end

        it "render the index page" do
            get :index
            expect(response).to render_template(:index)
        end

        it "there should be no heroes to show" do
            get :index
            expect(assigns(:heroes)).to be_empty
        end

        it "there must be heroes to show" do
            create(:hero)
            get :index
            expect(assigns(:heroes)).to_not be_empty
        end
    end

    context "GET #search" do
        it "has a 200 status code" do
            get :search, params: { search: "Hero name" }
            expect(response).to have_http_status(200)
        end

        it "render the search page" do
            get :search, params: { search: "Hero name" }
            expect(response).to render_template(:search)
        end

        it "does not render the search page and shows alert" do 
            get :search, params: { search: "" }
            expect(response).to_not render_template(:search)
            expect(flash.alert).to eq("Enter the name of the hero you want to search")
        end
    end

    context "GET #show" do
        let(:hero) { create(:hero) }
        it "has a 200 status code" do
            get :show, params: { format: hero.id }
            expect(response).to have_http_status(200)
        end
        
        it "render the show page" do
            get :show, params: { format: hero.id }
            expect(response).to render_template(:show)
        end

        it "be a hero" do
            get :show, params: { format: hero.id }
            expect(assigns(:heroes)).to be_a(Hero)
        end

        it "show a single hero" do
            get :show, params: { format: hero.id }
            expect(assigns(:heroes)).to eq(hero)
        end

        it "does not render the show page and shows alert" do
            get :show, params: { format: hero.id + 1 }
            expect(response).to_not render_template(:show)
            expect(flash.alert).to eq("There is no hero with that ID")
        end
    end
end