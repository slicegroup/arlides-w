# frozen_string_literal: true

module KepplerBanners
  # Banner Model
  class Banner < ApplicationRecord
    include ActivityHistory
    include CloneRecord
    include Uploadable
    include Downloadable
    include Sortable
    include Searchable
    
    mount_uploader :image, AttachmentUploader
    mount_uploader :video, AttachmentUploader
    
    validates_presence_of :image, :title, :subtitle, :video
    acts_as_list
    acts_as_paranoid
    
    validate  :check_dimensions, :on => [:create, :update]

    def check_dimensions
      return if image_cache.nil?
      if (image.width < 1920 || image.width > 1920) && ( image.height < 1080 || image.height > 1080)
        errors.add :image, "Dimensión incorrecta <br/> El tamaño de la imágen cargada es de: #{image.width}x#{image.height} y no cumple con las dimensiones recomendadas".html_safe
      end
    end
    
    def self.index_attributes
      %i[title subtitle image video]
    end
  end
end
