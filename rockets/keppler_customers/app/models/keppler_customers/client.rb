# frozen_string_literal: true

module KepplerCustomers
  # Client Model
  class Client < ApplicationRecord
    include ActivityHistory
    include CloneRecord
    include Uploadable
    include Downloadable
    include Sortable
    include Searchable
    mount_uploader :image, AttachmentUploader
    validates_presence_of :image, :title, :facebook, :instagram, :web, :service
    acts_as_list
    acts_as_paranoid

    before_save  :web_links, :facebook_links, :instagram_links

    def web_links
      include_https = self.web.include?('https://')
      include_https ? self.web : self.web = "https://" + self.web
    end

    def facebook_links
      include_https = self.facebook.include?('https://')
      include_https ? self.facebook : self.facebook = "https://" + self.facebook
    end

    def instagram_links
      include_https = self.instagram.include?('https://')
      include_https ? self.instagram : self.instagram = "https://" + self.instagram
    end
  

    def self.index_attributes
      %i[title image]
    end
  end
end
