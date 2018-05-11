# frozen_string_literal: true

Wiki::Engine.routes.draw do
  resources :wiki_spaces, path: '/', only: [] do
    nested do
      post 'wiki' => 'wiki_page#create', as: 'wiki_pages'
      get 'wiki/*path' => 'wiki_page#show', as: 'wiki_page'
      patch 'wiki/*path' => 'wiki_page#update'
      put 'wiki/*path' => 'wiki_page#update'
      get 'edit/*path' => 'wiki_page#edit', as: 'wiki_edit'
    end
  end
end
