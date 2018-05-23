# frozen_string_literal: true

module Yaw
  class WikiPageRevision < ApplicationRecord
    self.table_name = 'wiki_page_revisions'
    belongs_to :user
    belongs_to :wiki_page, inverse_of: :wiki_page_revisions
  end
end
