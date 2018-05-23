# frozen_string_literal: true

module Yaw
  class WikiSpace < ApplicationRecord
    self.table_name = 'wiki_spaces'
    has_many :wiki_pages, inverse_of: :wiki_space, dependent: :destroy
    def to_param
      title
    end
  end
end
