module Diaspora
  module Signature
    def self.included(model)
      model.class_eval do
        belongs_to :signature_order
        validates :signature_order, presence: true

        validates :author_signature, presence: true

        serialize :additional_data, Hash
      end
    end
  end
end
