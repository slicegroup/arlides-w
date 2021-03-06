# frozen_string_literal: true

# KepplerContactUs
module KepplerContactUs
  module Concerns
    # ActivityHistory Module
    module ActivityHistory
      extend ActiveSupport::Concern

      included do
        include PublicActivity::Model
        tracked owner: ->(controller, _) { controller && controller.current_user }
      end
    end
  end 
end