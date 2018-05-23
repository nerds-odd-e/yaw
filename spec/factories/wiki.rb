# frozen_string_literal: true

FactoryBot.define do
  sequence :path do |n|
    "path/to/page#{n}"
  end

  sequence :title do |n|
    "title#{n}"
  end

  factory :user do
    name 'tom'
  end

  factory :wiki_page, class: 'Yaw::WikiPage' do
    wiki_space
    path
    user
    title  'a wiki'
    body   'is a page'
  end

  factory :wiki_space, class: 'Yaw::WikiSpace' do
    title
  end
end
